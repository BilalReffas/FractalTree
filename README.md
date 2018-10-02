# FractalTree
Simple Playground to generate FractalTree's in Swift.
You can change the variable as you like to generate different FractalsTrees.
![](https://i.imgur.com/SEaF88y.png)

## Usage 
```swift
let frame = CGRect(x: 0, y: 0, width: 500, height: 500)
let fractal = FractalTree(frame: frame, depth: 5, x: frame.width / 2, y: frame.height, startAngle: -90, modificationAngle: 35, branchLength: 50)

PlaygroundPage.current.liveView = fractal
```

### Author

  [@reffas_bilal](https://twitter.com/Reffas_Bilal)
  
  [bilalreffas@googlemail.com]()
  

### License

```
MIT License

Copyright (c) 2018 Bilal Reffas

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
