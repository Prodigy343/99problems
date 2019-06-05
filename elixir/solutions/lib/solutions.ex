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

    @moduledoc """
    def reverse_s([t|h]) when n > 0 do
        [reverse(t) ++ h]
    end
    def reverse_s(a, n) when n == 0 do
        List.to_string(a)
    end
    """

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
    @moduledoc """
    def problem5(word) do
        reverse_s(String.to_charlist(word), String.length(word)+2)
    end
    """
end
