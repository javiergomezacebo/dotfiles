
###############################################################################
###############################################################################
##                                                                           ##
##      ######        #####    ##########                                    ##
##      ##   ##      ##   ##       ##                                        ##
##      ##    ##    ##     ##      ##                                        ##
##      ##     ##  ##       ##     ##                                        ##
##      ##    ##    ##     ##      ##                                        ##
##      ##   ##      ##   ##       ##                                        ##
##      ######        #####        ##                                        ##
##                                                                           ##
##          ##########  ##########  ##          ##########    #####          ##
##          ##              ##      ##          ##           ##    #         ##
##          ########        ##      ##          ##          ##               ##
##          #######         ##      ##          #######       #####          ##
##          ##              ##      ##          ##                 ##        ##
##          ##              ##      ##          ##           #    ##         ##
##          ##          ##########  ##########  ##########    ####           ##
##                                                                           ##
###############################################################################
###############################################################################

##
## Alpha version. 2013-11-10
## Still need to understand how to get:
##   - The cask for virtualbox-tz version running
##   - Downloading a shared file from google drive
##   - Starting all applications on boot
##   - Getting the accessibility applications running from scratch
##

# Setting up the environment
# It was easier to move everything to $HOME than to wonder how on earth to
# get it working the other ways
if [[ $PWD != $HOME/.dotfiles ]]; then
	mv ../.dotfiles $HOME/.dotfiles
fi


# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until dotfile.sh has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Xcode and the Command Line Tools
# xcode-select --install

# Make the directories we're used to use
mkdir $HOME/.dotfiles/term $HOME/.dotfiles/term/colours
mkdir $HOME/Documents/Uninstall_scripts $HOME/bin

# Install all Apps
sh $HOME/.dotfiles/.brew


# Get iTerm and Sublime Text to work to our liking:
# Get the real agnoster theme to work and the Source Code Pro font for sublime
# Get the font needed for the agnoster theme
cd $HOME/.dotfiles/term && git clone https://gist.github.com/3712874.git
cd $HOME/.dotfiles/term && git clone https://github.com/adobe/source-code-pro.git
cd $HOME/.dotfiles/term && wget https://gist.github.com/qrush/1595572/raw/417a3fa36e35ca91d6d23ac961071094c26e5fad/Menlo-Powerline.otf
open $HOME/.dotfiles/term/Menlo-Powerline.otf
# Get the Solarized dark dircolors for ls to work with dircolors
cd $HOME/.dotfiles/term/colours && hub clone seebi/dircolors-solarized
# Get the Solarized dark iterm theme (the one in github not working)
cd $HOME/.dotfiles/term/colours
wget http://www.iterm2.com/hostedcolors/Solarized%20Dark.itermcolors

# Get oh my zsh! & link it to the $HOME dir
hub clone robbyrussell/oh-my-zsh $HOME/.dotfiles/oh-my-zsh
ln -s $HOME/.dotfiles/oh-my-zsh $HOME/.oh-my-zsh


# Configure dropbox and wait for full download (around 16 Gigs as of 2013/11/08)
# This will be necessary to copy the Sublime Text 2 prefs and other preferences
# that are synced by default
open /opt/homebrew-cask/Caskroom/dropbox/latest/Dropbox.app/

# Run .osx conf files to get mac working to our liking
sh $HOME/.dotfiles/.osx

# Run the .extra.sh script to get the extra apps working
# comment if unnecessary
cd $HOME/.dotfiles/.extra


# Give message to wait until dropbox has stopped syncing
echo 'Wait until dropbox has stopped syncing and run'
echo 'sh $HOME/.dotfiles/.app-prefs'

