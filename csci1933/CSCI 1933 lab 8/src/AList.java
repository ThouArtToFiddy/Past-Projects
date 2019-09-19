/*
 * Modified from Frank M. Carrano's
 * Data Structures and Abstractions with Java (3rd Edition)
 */
import java.util.Arrays;
import java.util.Scanner;
import java.io.File;

public class AList<T extends Comparable>{

    private T[] list;
    private int numberOfEntries;

    public AList(){
        list = (T[])new Comparable[25];
        numberOfEntries = 0;
    }

    public AList(int initialCapacity){
        numberOfEntries = 0;
        T[] tempList = (T[]) new Comparable[initialCapacity];
        list = tempList;
    }

    public void add(T newEntry){
        ensureCapacity();
        list[numberOfEntries] = newEntry;
        numberOfEntries++;
    }

    public void add(T[] addList) {
        if(addList.length == 0)
            return;
        for(int i = 0; i < addList.length; i++) {
            add(addList[i]);
        }
    }

    public boolean add(int newPosition, T newEntry) {
        if(newPosition > numberOfEntries || newPosition < 0)
            return false;
        ensureCapacity();
        for(int i = numberOfEntries; i > newPosition; i--) {
            list[i] = list[i - 1];
        }
        list[newPosition] = newEntry;
        numberOfEntries++;
        return true;
    }

    public T remove(int givenPosition) {
        if(givenPosition >= numberOfEntries || givenPosition < 0)
            return null;
        T toReturn = list[givenPosition];
        for(int i = givenPosition; i < numberOfEntries - 1; i++) {
            list[i] = list[i + 1];
        }
        list[numberOfEntries - 1] = null;
        numberOfEntries--;
        return toReturn;
    }

    public T get(int item){
        if(item >= numberOfEntries || item < 0)
            return null;
        return list[item];
    }

    public int getLength(){
        return numberOfEntries;
    }

    public boolean isEmpty(){
        return numberOfEntries == 0;
    }

    public T[] toArray(){
        T[] result = (T[])new Comparable[numberOfEntries];
        for(int index = 0; index < numberOfEntries; index++){
            result[index] = list[index];
        }

        return result;
    }

    private void ensureCapacity(){
        if (numberOfEntries == list.length){
            list = Arrays.copyOf(list, 2 * list.length);
        }
    }

    public boolean contains(T element) {
        for(int i = 0; i < numberOfEntries; i++) {
            if(list[i].equals(element)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        if(isEmpty())
            return "[]";
        String toReturn = "[";
        for(int i = 0; i < numberOfEntries - 1; i++) {
            toReturn += list[i].toString() + ", ";
        }
        toReturn += list[numberOfEntries - 1].toString() + "]";

        return toReturn;
    }

    public AList<T> slice (int start, int stop)
    {
        AList<T> newList = new AList<T>();
        for(int i = start; i < stop; i++)
        {
            newList.add(this.get(i));
        }
        return newList;
    }

    public AList<T> slice (int start, int stop, int step)
    {
        AList<T> newList = new AList<T>();
        {
            for(int i = start; i< stop; i++)
            {
                if((i-start)%step==0)
                {
                    newList.add(this.get(i));
                }
            }
        }
        return newList;
    }

    public void sort(boolean ascending)
    {
        for(int i = getLength(); i > 0; i--){
            for(int j = 0; j < i-1; j++){
                if (ascending){
                if(get(j).compareTo(get(j+1)) > 0){
                    T temp = get(j+1);
                    remove(j+1);
                    add(j+1,get(j));
                    remove(j);
                    add(j,temp);
                }}
                else
                {
                    if(get(j).compareTo(get(j+1)) < 0){
                        T temp = get(j+1);
                        remove(j+1);
                        add(j+1,get(j));
                        remove(j);
                        add(j,temp);
                }}
            }
    }

    }


    public static AList<String> fileToAList(File input) {
        Scanner s;
        try {
            s = new Scanner(input);
        } catch(Exception e) {
            System.out.println("There was an error opening the file");
            return null;
        }
        AList<String> list = new AList<String>();
        AList<StringElement> stringelements = new AList<StringElement>();
        while(s.hasNext())
        {
          String num = s.next();
          Integer number = Integer.parseInt(num.substring(0,num.length()-1));
          StringElement string = new StringElement(number,s.next());
          stringelements.add(string);
        }
        stringelements.sort(true);
        for (int i = 0; i < stringelements.getLength();i++)
        {
            list.add(stringelements.get(i).getString());
        }

        return list;

    }

    public static void main(String[]args)
    {
        AList<String> list1 = new AList<String> ();
        AList<String> list2 = new AList<String> ();
        list1.add("a");list1.add("b");list1.add("c");list1.add("d");list1.add("e");list1.add("f");list1.add("g");list1.add("h");
        list2.add("f");list2.add("c");list2.add("a");list2.add("d");list2.add("g");list2.add("e");list2.add("b");list2.add("h");
        System.out.println(list1.slice(1,7,2));
        System.out.println(list1.slice(0,7,2));
        System.out.println(list1.slice(0,7));
        System.out.println(list1.slice(2,6));
        System.out.println();
        System.out.println(list2.slice(0,8));
        list2.sort(false);
        System.out.println(list2.slice(0,8));
        list2.sort(true);
        System.out.println(list2.slice(0,8));
        System.out.println(fileToAList(new File("/home/wu000169/IdeaProjects/CSCI 1933 lab 8/src/input.txt")).toString());

    }


}