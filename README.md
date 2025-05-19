### News Article Detective: A short NLP Text Relations Project <img src="https://github.com/user-attachments/assets/372deae4-42be-4231-9d25-b251755f112c" style="width:6rem; height:6rem">


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


https://github.com/user-attachments/assets/69479692-278e-446e-8d47-feacc595a530




### Casual Exploration of the concept of Natural Language Processing (NLP) to seek relations between key words of different news articles / text sources. 

Using BabelScape's REBEL model, this short project can decipher and analyse text corpuses ranging from paragraphs injected directly in the Notebook, to news articles queried online. Based on the BART model which is a powerful transformer model for NLP tasks, REBEL can extract
many keywords out of a text corpus via the seq2seq task. This type of task is used by transformers such as the aforementioned BART, and it generates structured knowledge directly from the text in the form of triplets.


For example:
`"The Ring, was destroyed in the Third Age"`
Output Triplet: `<"Ring","Destroyed","Third Age">`

Thus, REBEL can extract semantic relations such as:

<ul>
  <li>Person-Related Facts: (Elon Musk, CEO of, Tesla) | (Marie Curie, discovered, radium)</li>

<li>Organization & Location Relations: (Google, headquartered in, Mountain View) | (Amazon, subsidiary of, AWS)</li>

<li>Event & Temporal Relations: (World War II, started in, 1939) | (Apple Inc., founded in, 1976)</li>

<li>Scientific & Medical Relations: (Aspirin, treats, headache) | (Mitochondria, part of, cell)</li>

<li>General Common Knowledge: (Paris, capital of, France) | (The Eiffel Tower, located in, Paris)</li>
</ul>

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Therefore, REBEL extracts relations in this format:
|triple_start| |subj|, |relation|, |obj| |end_triple| .... |triple_start| |subj|, |relation|, |obj| |end_triple| ....|triple_start| |subj|, |relation|, |obj| |end_triple| ....list goes on and on for the entire corpus.

- `triple_start` and `end_triple` mark the start and ends of a triple respectively.
- `subj` denotes entity 1 (main subject) of the triple, a noun
- `relation` denotes the predicate of said subject, usually a clause containing a verb, to state something about the subject
- `obj` denotes entity 2 (targeted object) of the triple.

So for example, for the triple `I went to the restroom` the subject is `I`, relation is `went` and object is `restroom`. From here, the NLP model can now detect that I have gone to the restroom and perhaps remind me to bring enough toilet paper. 

### Differenes from Convetional Classification Techniques:

#### Conventional Relation Extraction Models rely on the `Named Entity Recognition` + `A separate Relation Classifier` that must be trained separately, to find the relations between texts.
Example:
- "I went to Tthe Dodo Zoo in 2022"

Via NER, we will first extract all of the entities, namely "I", "Dodo Zoo", "2022".
Then, we shall group all possible pairs: --> ["I", "Dodo Zoo"] or ["Dodo Zoo", "2022"] and ["I", "2022"]
Now, using a Relation Classifier that must be trained independently via `Attention-Based training` to try and `fill in the blanks`. Common transformers is BERT.
So, the output can be: (One such possibility)
- For ["I", "Dodo Zoo"] ---> "I went to Dodo Zoo"
- For ["Dodo Zoo", "2022"] ---> "Dodo Zoo founded in 2022"
- For ["I", "2022"] ---> "I spoke in 2022"

Therefore, we can see REBEL offers a much faster, efficient, productive and resource saving approach towards Relations Extraction.
- The lack of a need for a separate classifier model saves resources and training.
- Apart from following the Pipeline Approach (NER-->Relation Classifier), REBEL is end to end meaning that the same Attention mechanism handles both entity detection and relation extraction jointly.

#### Overall, a cool project. Looking forward to expanding this further.

#### Instructions for how to visualise the articles and run the code, are found in the main Jupyter Notebook `BuildingKnowledgeBasefromTexts.ipynb`

Inspired and Adapted from:
https://medium.com/nlplanet/building-a-knowledge-base-from-texts-a-full-practical-example-8dbbffb912fa


