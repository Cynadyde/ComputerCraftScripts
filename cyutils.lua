function class(fields)
  local cls = {table.unpack(fields or {})}
  cls.__init__ = function(cls, attrs)
    local object = attrs or {}
    setmetatable(object, {__index=cls})
    cls.__index = cls
    return object
  end
  setmetatable(cls, {__call=cls.__init__})
  return cls
end
