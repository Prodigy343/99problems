defmodule Solutions do
    #Global
    def kth([_h|t], i) when i > 1 do
        kth(t, i-1)
    end
    def kth([h|_t], i) when i == 1 do
        h
    end
    def kth([_h|_t], i) when i == 0 do
        []
    end

    def count([_h|t], n) when length(t) > 0 do
        count(t, n+1)
    end
    def count([_h|t], n) when length(t) == 0 do
        n+1
    end

    def reverse([h]) do
        [h]
    end
    def reverse([h|t]) do
        reverse(t) ++ [h]
    end

    def palin([h1],[h2]) when h1 == h2 do
        true
    end
    def palin([h1|_t1],[h2|_t2]) when h1 != h2 do
        false
    end
    def palin([h1|t1],[h2|t2]) when h1 == h2 do
        palin(t1,t2)
    end

    def compress([h|t],ph) when ph == h do
        compress(t,h)
    end
    def compress([h|t],ph) when ph != h do
        [h] ++ compress(t,h)
    end
    def compress([h],_ph) do
        [h]
    end
    def compress([],_ph) do
        []
    end

    def group([h|t],[]) do
        group(t,[h])
    end
    def group([h|t],[h2|t2]) when h2 == h do
        group(t,[h2|t2] ++ [h])
    end
    def group([h|t],[h2|t2]) when h2 != h do
        [to_string([h2|t2])] ++ group(t,[h])
    end
    def group([],[h2|t2]) do
        [to_string([h2|t2])]
    end
    
    def encode([h|t]) do
        [{h,String.length(h)}] ++ encode(t)
    end
    def encode([]) do
        []
    end

    def encode_less([h|t]) do
        if String.length(h) == 1 do
            [h] ++ encode_less(t)
        else
            [{h,String.length(h)}] ++ encode_less(t)
        end
    end
    def encode_less([]) do
        []
    end

    def decode([]) do
        []
    end
    def decode([h|t]) when is_binary(h) == true do
        [h] ++ decode(t)
    end
    def decode([h|t]) do
        char_spam(h) ++ decode(t)
    end

    def char_spam(tuple) when elem(tuple, 1) == 0 do
        #[elem(tuple, 0)] ++ char_spam({elem(tuple, 0), elem(tuple, 1) - 1})
        [elem(tuple, 0)]
    end

    mod
    def char_spam({c,n}) do
        n
    end

    #Problem 1
    def problem1([]) do
        []
    end
    def problem1([_h | t]) do
        kth(t, length(t))
    end
    def problem1(word) do
        kth(String.split(word, ""), String.length(word)+1)
    end

    #Problem 2
    def problem2([]) do
        []
    end
    def problem2([_h | t]) do
        kth(t, length(t)-1)
    end
    def problem2(word) do
        kth(String.split(word, ""), String.length(word))
    end

    #Problem 3
    def problem3([]) do
        []
    end
    def problem3([_h | t], i) do
        kth(t, i-1)
    end
    def problem3(word, i) do
        kth(String.split(word, ""), i+1)
    end

    #Problem 4
    def problem4([]) do
        []
    end
    def problem4([_h | t]) do
        count(t, 1)
    end
    def problem4(word) do
        count(String.to_charlist(word), 0)
    end

    #Problem 5
    def problem5([]) do
        []
    end
    def problem5([h | t]) do
        reverse(t) ++ [h]
    end
    def problem5(word) do
        reverse(String.to_charlist(word))
    end

    #Problem 6
    def problem6([]) do
        []
    end
    def problem6(array) when is_list(array) == true do
        palin(reverse(array),array)
    end
    def problem6(word) when is_binary(word) == true do
        palin(reverse(String.to_charlist(word)),String.to_charlist(word))
    end

    #Problem 7
    def flatten([h|t]) when is_list(h) == true do
        flatten(h) ++ flatten(t)
    end
    def flatten([h|t]) do
        [h] ++ flatten(t)
    end
    def flatten([]) do
        []
    end
    def problem7([]) do
        []
    end
    def problem7([h|t]) do
        flatten([h|t])
    end
    
    #Problem 8
    def problem8([]) do
        []
    end
    def problem8([h|t]) do
        compress([h|t],h)
    end
    def problem8(word) do
        compress(String.to_charlist(word), String.first(word))
    end

    #Problem 9
    def problem9([]) do
        []
    end
    def problem9([h|t]) do
        group([h|t],[])
    end

    #Problem 10
    def problem10([]) do
        []
    end
    def problem10(word) do
        encode(problem9(String.to_charlist(word)))
    end

    #Problem 11
    def problem11([]) do
        []
    end
    def problem11(word) do
        encode_less(problem9(String.to_charlist(word)))
    end

    #Problem 12
    def problem12([]) do
        []
    end
    
    def problem12(list) do
        decode(list)
    end

end