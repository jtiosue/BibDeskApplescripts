# Applescripts for BibDesk

For my own memory and for when I inevitably need to switch computers at some point in the future, this is how I set up and use [BibDesk](https://bibdesk.sourceforge.io) (which comes along with the standard Mac Tex distribution) on my laptop. 


**One time things to do when you first start using BibDesk**

1. Go to preferences and configure the default citation key style to overwrite any current ones and make it good.
2. Enable auto file. Then when you download a paper and place it into the entry, BibDesk will automatically file it away nicely. You can then have the folder that all this is taking place in be backed up by whatever backup service you use.
3. Change the default so that Command-Option-C copies the minimal bib and Command-C copies the cite comand.
4. In the View menu, select to view the tab bar.
5. In custom bibtex fields, add `Eprint`, `Archiveprefix`, `Primaryclass`, and `DOI` as optional fields to *every* reference class. Then, minimial bib (i.e. Command-Option-C) will always include those fields.

**Things I do on an ongoing basis**

6. For every journal publication, go to their website to download the bibtex that they generate. The automatic bibtex geneated from the DOI doesn't usually have the journal abbreviations quite right, etc. I've had to manually change my bibliography enough at the request of some editor that I have found it worth it to just copy and paste the journal-provided bibtex once into my master bibtex file and never have to worry about it again.
7. For every publication that is also posted on arXiv, add the entries `Archiveprefix=arXiv, Primaryclass={the-prim-class}, Eprint={the-eprint-number}`. That way, my master bibtex file has the journal version of papers, but also includes the arXiv version of every paper. The revtex bibliography style in latex will automatically include both in a paper's generated biblography. When not using revtex, I like the [Quantum.bst](https://github.com/quantum-journal/quantum-journal/blob/master/quantum.bst) bibliography style, which does the same thing.
8. For papers that are *only* on arXiv (i.e. no journal version), make the entry type `misc`, and of course include the fields `Archiveprefix, Primaryclass, Eprint`.
9. For every publication, add the abstract so that there is more easily accessible information for BibDesk to search through when using the search bar. You can also search files in BibDesk, but it takes longer.
10. For every publication, I use the arXiv subject identifiers as `Keywords`. For example, if a publication is on arXiv and is listed with primary class `quant-ph` and crosslisted with `math.MP`, then I set the `Keywords` field in the bibtex to `quant-ph; math.MP`.


## Applescripts in the `script/` folder

My Applescripts automate various things from the list above. To add the scripts to BibDesk, go to `Scripts > About the Scripts Menu`, and then select to `Open Scripts Folder`. Add all the files from the `scripts/` folder of this repository to this folder. 

Below, I'll describe each script.
Before that, I'll mention that you can add keyboard shortcuts to run each script. This is described [here](https://support.apple.com/guide/mac-help/create-keyboard-shortcuts-for-apps-mchlp2271/mac). Given that Command-Option-L is already a command to take a clipboard that has either a DOI or a full citation and insert it into the library, I like to attach Command-Option-Shift-L to the script `fillArxivInfo`.


### fillArxivInfo.scpt

*Note that this script does not work with old-style arXiv IDs (e.g. math/9712206)*
The `fillArxivInfo` script serves the function of (7-10) above. Specifically, it does the following.

*If you have some publications selected*

It looks to see if the publication has any value in the `Eprint` field. If it doesn't, then the script does nothing.
If the publication does have an `Eprint` number then: 

- The script goes through the relevant fields, and, if they are empty, it pulls the information from the arXiv API and fills in the info. For example, if the publication has no value in any of `Primaryclass, Archiveprefix, Month, Year, Keywords, Title, Author, Abstract, DOI`, then the script will pull all of this info from arXiv and fill it in.
- If the publication has no value in any of the fields `Journal, Publisher, Howpublished`, then the script assumes that the paper must only be posted on arXiv and so changes the type of the bibtex entry to `misc`.

*If you do not have any publications selected*

In this case, the script will assume that you have copied an arXiv eprint number to your clipboard. It will take whatever is in your clipboard and it will create a `misc` publication by pulling all the info mentioned above from the arXiv API.

For example, if you have copied `2209.06838` to your clipboard and you run `fillArxivInfo` from within BibDesk without selecting any publication, it will create a new publication in your references file and fill in all the fields `Primaryclass, Archiveprefix, Month, Year, Keywords, Title, Author, Abstract, DOI`.


### downloadArxivPdf.scpt

Select any number of publications in your file. Running this script will download and auto file all PDFs from arXiv for each publication that has `Archiveprefix=arXiv` and has a value in the `Eprint` field.

### arXivCheckPublished.scpt

Very often, I add arXiv papers to my bibliography when I see them when they first come out, and then a year or so later they will eventually be published in a journal. Selecting any number of publications in your file and running the `arXivCheckPublished` script will automatically check (via arXiv's API) if there is a journal reference or external DOI associated to the publication. It will then inform you which, if any, of the only-arXiv publications in your selection now have a journal reference. It will not automatically update the reference, it will just tell you which references need to be updated. I did this because, as mentioned before, I prefer to just download the official bibtex from the journal's website once and never have to think about it again. So I just periodically run `arXivCheckPublished` on my bibliography, and whenever a publication needs to be updated, I update it manually. 

If you want to make it so the bibtex enetry *is* automatically updated, it would be an easy enough thing to add to the script. Also, if you want to make it so that e.g. `arXivCheckPublished` is run automatically on all your publications everytime you open the reference file for the first time, etc., that would also be easy to add.



## Misc

#### GDrive

To sync to GDrive, download GDrive for Desktop. Sync the references folder.
To then be able to easily edit pdfs on e.g. the iPad, add Drive to Finder on the iPad. 
Then you can edit there and it will automatically sync to your references folder everywhere you have GDrive installed.

However, editing is weird. Don't just open and then markup! You have to go Share > Markup. Then when you're done marking up, select Discard PDF. The original pdf file will then be updated with the markups you made.

An alternative is to open the pdf in Quick Look on you computer, press the Markup button, and then you can [cast](https://apple.stackexchange.com/questions/395595/continuity-markup-now-showing-in-preview) to iPad or iPhone to markup.

Also, I create an Applescript file with the following contents:
```
using terms from application "BibDesk"
	tell application "BibDesk"
		
		open "/Users/jtiosue/Google Drive/My Drive/References/references.bib"
		run script "/Users/jtiosue/Library/Application Support/BibDesk/Scripts/fillArxivInfo.scpt"
		
	end tell
end using terms from
```
Then, I add a keyboard shortcut in Mac settings (not associated to BibDesk) to run this script when I'm in Safari. So, when I'm in safari, I can copy and arXiv Eprint ID and run the keyboard shortcut, and it will automatically open my master references bib file and create the citation. 


#### Misc notes

- Remember that Command-Option-L will take clipboard (either DOI or full citation) and paste it into the references file.
