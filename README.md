# MotionBlow - High-fiber formula for your Rubymotion dumps!

Tired of generating your screen dumps by hand for your appstore submissions?
MotionBlow makes it easy to get all the hi-res screen dumps for your app across all
your supported devices.
 
 
## For the star-gizzards ;-)

```
> git clone https://github.com/derailed/motion-blow.git
> cd motion-bowels
> rake motion:blow
```

## Installation

```
gem install motion-blow
```

## Usage

### Create a test runner

Make a directory spec/snapshot and add you screen driving spec.
 
```ruby
# spec/snapshots/blow.rb
describe 'ColonBlow' do
  include MotionBlow
  
  it "should dump all my screens correctly" do
    click!
    tap( 'chain' )
    click!
    ...
  end
end
```

### Run it!

```
> rake motion:blow
```

NOTE: MotionBlow creates a spec/snapshot/pngs/device_xxx directory containing all
the screen shots per the specification of your click! calls. 

You can then upload your favorite app snapshots and you're done!

## Contact

Fernand Galiana

- http://github.com/derailed
- http://twitter.com/kitesurfer
- <fernand.galiana@gmail.com>

Still work in progress. So please feel to fork or contact me if you run into issues or
just want to send some good vibes...


## License

MotionBlow is released under the [MIT](http://opensource.org/licenses/MIT) license.


## History
  + 0.0.1:
    + Initial drop