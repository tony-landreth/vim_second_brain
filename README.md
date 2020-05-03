# Vim Second Brain  

I wanted to create a repo to describe a method of note taking that combines some of the best ideas on the subject 
with minimal reliance on third party vendors. The ideas are taken from Tiago Forte's [Building a Second Brain](https://fortelabs.co/blog/basbpodcast/) 
podcast, and the [Zettelkasten](https://zettelkasten.de) method, particularly as it's implemented in [TheArchive](https://zettelkasten.de/the-archive/).  

The goal of the system is to consolidate all notes in one place, including associated media, such as image files. I use the following directoring structure to organize all of my notes:  

All markdown notes go in: `notes/`  
All image files go in: `notes/media`  
All single file scripts go in: `notes/scripts`  

That's it. To search my notes, I use the [The Silver Searcher](https://github.com/ggreer/the_silver_searcher). For using the Silver Searcher in Vim, see [this article](https://thoughtbot.com/blog/faster-grepping-in-vim).  

The scripts included in this repository are there to speed up note creation. For example, if you want to create a new todo list, you can run `.\new_todo.sh day_plan` and a new file with a link to itself and the
relevant tags for a todo list (see below for info on tags).  

I've also include a script for pushing notes to a git repository every minute, so that you're always backing up your precious infos.  

## Types of Notes  
There are four kinds of notes that I currently 
recognize in my implementation. Each kind of notes receives its own tag:

1. Checklists (#todo)
2. Factoids (#article)
3. Flashcards (#flash_card)
4. Code Snippets (#snippet)

## Links Between Notes  
A core concept of the Zettelkasten method of note taking is that linking notes to each other can faciliate creativity and problem solving. Vim allows you to link to files with the `gf` command. Whenever I write a link, I surround it with square braces so that it stands out.  
When I'm writing a note, and I'd like to link it to another note, all I need to do is paste the path to the other note in the current note. See the note examples below for how I do this.  


## Tags  
I've got four kinds of tags at work in my system:  
1. Datetime Stamps  
2. Type tags, see above  
3. Project tags  

I write a project tag like this `#_project` while the project is live. When the project is finished, I write it like this `#!_project`. I use a sloppy bash script to list all of the project tags in my notes 
directory.

## Examples  

### Checklist  

```
  # Day Plan  
  #todo 20051588542134  

  # Morning  
  -[x] make gorditas  
  -[x] visit Mom  

  # Afternoon
  -[x] spend time with spouse  
  -[x] plan the week  

  [[20051588542134_day_plan.md]]
```

## Snippet  
```
  # Vagrant  
  #snippet 20051588542134  

  To configure Vagrant for ssh, running Ubuntu 18.04, you'll want to ssh as the vagrant user, whose password is vagrant. E.g.,

      ssh vagrant@172.28.128.20
   
  To place your key on the Vagrant box:

      ssh-copy-id vagrant@172.28.128.20

  [[201904011100_vagrant.md]]
```

## Article  
```
  # Slow is Smooth and Smooth is Fast  
  #article #04142020  

  FROM: https://www.lesswrong.com/posts/4FZfzqMtwQZES3eqN/slow-is-smooth-and-smooth-is-fast  

  Apparently "Slow is smooth, and smooth is fast" is a Navy SEAL saying. The meaning is pretty clear. Practice slowly so that the correct motor patterns are ingrained. And perhaps equally importantly, execute "slowly", that is to say, don't rush. Pushing your nervous system to perform faster than it's trained to will simply cause you to fumble what you're doing, and the end result is that your rushed performance is slower than if you had attempted a measured cadence in the first place.  

  [[202004140825_slow_is_smooth.md]]
```

## Flash Card  
A flash card is two notes, making it possible to link back and forth between a question and an answer.  

```
# ImageDataGenerator
#flash_card 20051588547204

Question: What is ImageDataGenerator good for?

[[20051588547352_ImageDataGeneratorAnswer.md]]
[[20051588547204_ImageDataGeneratorQuestion.md]]

```

```
# ImageDataGeneratorAnswer
#flash_card 20051588547352

Answer: ImageDataGeneratorAnswer is good for data augmentation to extend training examples etc. by shifting, zooming, and flipping image
data serialized into numpy arrays.

[[20051588547204_ImageDataGeneratorQuestion.md]]
[[20051588547352_ImageDataGeneratorAnswer.md]]
```
