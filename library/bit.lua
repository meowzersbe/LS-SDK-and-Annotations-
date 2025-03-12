---LuaJIT library for bitwise operations
---@class bit
bit = {}

---Returns the bitwise arithmetic right-shift of its first argument by the number of bits given by the second argument. Arithmetic right-shift treats the most-significant bit as a sign bit and replicates it. Only the lower 5 bits of the shift count are used \(reduces to the range \[0..31\]\).
---@param x number #number
---@param n number #number of bits
---@return number
bit.arshift = function(x, n) end

---Returns the bitwise and of all of its arguments. Note that more than two arguments are allowed.
---@param x1 number #number
---@vararg number #number\(s\)
---@return number
bit.band = function(x1, ...) end

---Returns the bitwise not of its argument.
---@param x number #number
---@return number
bit.bnot = function(x) end

---Returns the bitwise or of all of its arguments. Note that more than two arguments are allowed.
---@param x1 number #number
---@vararg number #number\(s\)
---@return number
bit.bor = function(x1, ...) end

---Swaps the bytes of its argument and returns it. This can be used to convert little-endian 32 bit numbers to big-endian 32 bit numbers or vice versa.
---@param x number #number
---@return number
bit.bswap = function(x) end

---Returns the bitwise xor of all of its arguments. Note that more than two arguments are allowed.
---@param x1 number #number
---@vararg number #number\(s\)
---@return number
bit.bxor = function(x1, ...) end

---Returns the bitwise logical left-shift of its first argument by the number of bits given by the second argument. Logical shifts treat the first argument as an unsigned number and shift in 0-bits. Only the lower 5 bits of the shift count are used \(reduces to the range \[0..31\]\).
---@param x number #number
---@param n number #number of bits
---@return number
bit.lshift = function(x, n) end

---Returns the bitwise left rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side. Only the lower 5 bits of the rotate count are used \(reduces to the range \[0..31\]\).
---@param x number #number
---@param n number #number of bits
---@return number
bit.rol = function(x, n) end

---Returns the bitwise right rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side. Only the lower 5 bits of the rotate count are used \(reduces to the range \[0..31\]\).
---@param x number #number
---@param n number #number of bits
---@return number
bit.ror = function(x, n) end

---Returns the bitwise logical right-shift of its first argument by the number of bits given by the second argument. Logical shifts treat the first argument as an unsigned number and shift in 0-bits. Only the lower 5 bits of the shift count are used \(reduces to the range \[0..31\]\).
---@param x number #number
---@param n number #number of bits
---@return number
bit.rshift = function(x, n) end

---Normalizes a number to the numeric range for bit operations and returns it. This function is usually not needed since all bit operations already normalize all of their input arguments.
---@param x number #number to normalize
---@return number
bit.tobit = function(x) end

---Converts its first argument to a hex string. The number of hex digits is given by the absolute value of the optional second argument. Positive numbers between 1 and 8 generate lowercase hex digits. Negative numbers generate uppercase hex digits. Only the least-significant 4\*n bits are used. The default is to generate 8 lowercase hex digits.
---@param x number #number to convert
---@param n number #number of hex digits to return
---@return number
bit.tohex = function(x, n) end

