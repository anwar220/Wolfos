# classes4.dex

.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;,
        Landroid/widget/SpellChecker$SentenceIteratorWrapper;,
        Landroid/widget/SpellChecker$RemoveReason;
    }
.end annotation


# static fields
.field public static final AVERAGE_WORD_LENGTH:I = 0x7

.field private static final DBG:Z = false

.field public static final MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final MAX_SENTENCE_LENGTH:I = 0x15e

.field private static final SPELL_PAUSE_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String;

.field private static final USE_SPAN_RANGE:I = -0x1

.field public static final WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final mCookie:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIds:[I

.field private mLength:I

.field private mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

.field private mSpanSequenceCounter:I

.field private mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private mSpellRunnable:Ljava/lang/Runnable;

.field private mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIds(Landroid/widget/SpellChecker;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mIds:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLength(Landroid/widget/SpellChecker;)I
    .registers 1

    iget p0, p0, Landroid/widget/SpellChecker;->mLength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpellCheckSpans(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpellParsers(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddSpellCheckSpan(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetectSentenceBoundary(Landroid/widget/SpellChecker;Ljava/lang/CharSequence;II)Landroid/util/Range;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->detectSentenceBoundary(Ljava/lang/CharSequence;II)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mspellCheck(Landroid/widget/SpellChecker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker;->spellCheck(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/widget/SpellChecker$SpellParser;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    iput v0, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/text/style/SpellCheckSpan;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Landroid/widget/SpellChecker;->mCookie:I

    return-void
.end method

.method private addSpellCheckSpan(Landroid/text/Editable;II)V
    .registers 9

    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput v3, v2, v0

    return-void
.end method

.method private createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ltz v5, :cond_9a

    if-gt v6, v5, :cond_1a

    move-object/from16 v12, p2

    goto/16 :goto_9c

    :cond_1a
    const/4 v7, -0x1

    if-eq v3, v7, :cond_24

    if-eq v4, v7, :cond_24

    add-int v7, v5, v3

    add-int v8, v7, v4

    goto :goto_26

    :cond_24
    move v7, v5

    move v8, v6

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v9

    if-lez v9, :cond_3f

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    :goto_2f
    if-ge v11, v9, :cond_3c

    move-object/from16 v12, p2

    invoke-virtual {v12, v11}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    :cond_3c
    move-object/from16 v12, p2

    goto :goto_49

    :cond_3f
    move-object/from16 v12, p2

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v11

    const/4 v13, 0x0

    and-int/lit8 v14, v11, 0x10

    if-nez v14, :cond_54

    or-int/lit8 v13, v13, 0x1

    :cond_54
    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_5a

    or-int/lit8 v13, v13, 0x2

    :cond_5a
    and-int/lit8 v14, v11, 0x8

    if-eqz v14, :cond_60

    or-int/lit8 v13, v13, 0x8

    :cond_60
    new-instance v14, Landroid/text/style/SuggestionSpan;

    iget-object v15, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v10, v13}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    sget-object v15, Landroid/widget/SpellChecker$RemoveReason;->REPLACE:Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {v1, v7, v8, v15}, Landroid/widget/SpellChecker;->removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z

    move-result v15

    if-nez v15, :cond_7d

    iget-object v2, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result v2

    if-eqz v2, :cond_7d

    const/4 v2, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v2, 0x0

    :goto_7e
    if-eqz v2, :cond_86

    new-instance v3, Landroid/text/SpannedString;

    invoke-direct {v3, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_87

    :cond_86
    const/4 v3, 0x0

    :goto_87
    const/16 v4, 0x21

    invoke-interface {v1, v14, v7, v8, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    if-eqz v2, :cond_93

    iget-object v4, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v7, v8}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V

    :cond_93
    iget-object v4, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v4, v7, v8, v0}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    return-void

    :cond_9a
    move-object/from16 v12, p2

    :goto_9c
    return-void
.end method

.method private detectSentenceBoundary(Ljava/lang/CharSequence;II)Landroid/util/Range;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    add-int/lit16 v0, p2, -0x15e

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit16 v2, p2, -0x2bc

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit16 v1, p2, 0x2bc

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit16 v2, p2, 0x41a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, p1, v0, v1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->setCharSequence(Ljava/lang/CharSequence;II)V

    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, p2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->isBoundary(I)Z

    move-result v2

    if-eqz v2, :cond_34

    move v2, p2

    goto :goto_3a

    :cond_34
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v2, p2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->preceding(I)I

    move-result v2

    :goto_3a
    nop

    iget-object v3, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v3, v2}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->following(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_45

    move v3, v1

    :cond_45
    sub-int v5, v3, v2

    const/16 v6, 0x15e

    if-gt v5, v6, :cond_5c

    :goto_4b
    if-ge v3, p3, :cond_71

    iget-object v5, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-virtual {v5, v3}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->following(I)I

    move-result v5

    if-eq v5, v4, :cond_71

    sub-int v7, v5, v2

    if-le v7, v6, :cond_5a

    goto :goto_71

    :cond_5a
    move v3, v5

    goto :goto_4b

    :cond_5c
    sub-int v4, v3, p2

    if-le v4, v6, :cond_6b

    add-int/lit16 v5, p2, 0x15e

    invoke-static {p1, v5, v3}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/SpellChecker;->roundUpToWordStart(Ljava/lang/CharSequence;II)I

    move-result v2

    goto :goto_71

    :cond_6b
    add-int/lit16 v5, v3, -0x15e

    invoke-direct {p0, p1, v5, v2}, Landroid/widget/SpellChecker;->roundUpToWordStart(Ljava/lang/CharSequence;II)I

    move-result v2

    :cond_71
    :goto_71
    new-instance v4, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v4
.end method

.method private static findSeparator(Ljava/lang/CharSequence;II)I
    .registers 6

    if-ge p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    move v1, p1

    :goto_6
    if-eq v1, p2, :cond_15

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_13

    return v1

    :cond_13
    add-int/2addr v1, v0

    goto :goto_6

    :cond_15
    return p2
.end method

.method public static haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .registers 6

    if-eq p4, p1, :cond_6

    if-eq p3, p2, :cond_6

    const/4 v0, 0x1

    goto :goto_25

    :cond_6
    if-ne p4, p1, :cond_17

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge p1, v0, :cond_17

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    goto :goto_25

    :cond_17
    if-ne p3, p2, :cond_24

    if-lez p2, :cond_24

    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method private static isSeparator(I)Z
    .registers 5

    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, v0

    const v3, 0x61707000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private isSessionActive()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private nextSpellCheckSpanIndex()I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v1, v1, v0

    if-gez v1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    iget-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v2, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v2}, Landroid/text/style/SpellCheckSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .registers 23

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    const/4 v0, 0x0

    if-eqz p1, :cond_b3

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v1

    iget v2, v6, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v1, v2, :cond_13

    goto/16 :goto_b3

    :cond_13
    iget-object v1, v6, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/text/Editable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v10

    const/4 v1, 0x0

    move v11, v1

    :goto_22
    iget v1, v6, Landroid/widget/SpellChecker;->mLength:I

    if-ge v11, v1, :cond_b2

    iget-object v1, v6, Landroid/widget/SpellChecker;->mIds:[I

    aget v1, v1, v11

    if-ne v10, v1, :cond_ae

    iget-object v1, v6, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v12, v1, v11

    invoke-interface {v9, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_37

    return-object v0

    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v14

    and-int/lit8 v1, v14, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_43

    move v1, v3

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    move v15, v1

    and-int/lit8 v1, v14, 0x2

    if-lez v1, :cond_4b

    move v1, v3

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    move/from16 v16, v1

    and-int/lit8 v1, v14, 0x8

    if-lez v1, :cond_53

    move v2, v3

    :cond_53
    move/from16 v17, v2

    add-int v1, v13, v7

    add-int/2addr v1, v8

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v1, v2, :cond_5f

    return-object v12

    :cond_5f
    if-nez v15, :cond_73

    if-nez v16, :cond_65

    if-eqz v17, :cond_73

    :cond_65
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v12

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    goto :goto_ad

    :cond_73
    invoke-interface {v9, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v7, v2, :cond_81

    if-eq v8, v2, :cond_81

    add-int v2, v13, v7

    add-int v3, v2, v8

    goto :goto_83

    :cond_81
    move v2, v13

    move v3, v1

    :goto_83
    if-ltz v13, :cond_ab

    if-le v1, v13, :cond_ab

    if-le v3, v2, :cond_ab

    iget-object v4, v6, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result v4

    if-eqz v4, :cond_96

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v9}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    :cond_96
    sget-object v5, Landroid/widget/SpellChecker$RemoveReason;->OBSOLETE:Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {v9, v2, v3, v5}, Landroid/widget/SpellChecker;->removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z

    move-result v5

    if-eqz v4, :cond_a8

    if-eqz v5, :cond_a8

    move/from16 v18, v1

    iget-object v1, v6, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V

    goto :goto_ad

    :cond_a8
    move/from16 v18, v1

    goto :goto_ad

    :cond_ab
    move/from16 v18, v1

    :goto_ad
    return-object v12

    :cond_ae
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_22

    :cond_b2
    return-object v0

    :cond_b3
    :goto_b3
    return-object v0
.end method

.method private static removeErrorSuggestionSpan(Landroid/text/Editable;IILandroid/widget/SpellChecker$RemoveReason;)Z
    .registers 10

    const/4 v0, 0x0

    const-class v1, Landroid/text/style/SuggestionSpan;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_27

    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_27

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0xa

    if-eqz v5, :cond_27

    invoke-interface {p0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2a
    return v0
.end method

.method private roundUpToWordStart(Ljava/lang/CharSequence;II)I
    .registers 6

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return p2

    :cond_b
    invoke-static {p1, p2, p3}, Landroid/widget/SpellChecker;->findSeparator(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eq v0, p3, :cond_14

    add-int/lit8 v1, v0, 0x1

    goto :goto_15

    :cond_14
    move v1, p3

    :goto_15
    return v1
.end method

.method private scheduleNewSpellCheck()V
    .registers 5

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    goto :goto_11

    :cond_c
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_11
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .registers 4

    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/widget/SpellChecker;->resetSession()V

    if-eqz p1, :cond_12

    new-instance v0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    invoke-static {p1}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SentenceIteratorWrapper;-><init>(Ljava/text/BreakIterator;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSentenceIterator:Landroid/widget/SpellChecker$SentenceIteratorWrapper;

    :cond_12
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onLocaleChanged()V

    return-void
.end method

.method private spellCheck()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->spellCheck(Z)V

    return-void
.end method

.method private spellCheck(Z)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    iget v2, v0, Landroid/widget/SpellChecker;->mLength:I

    new-array v10, v2, [Landroid/view/textservice/TextInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v11, v2

    move v12, v3

    :goto_1f
    iget v2, v0, Landroid/widget/SpellChecker;->mLength:I

    const/4 v3, 0x0

    if-ge v12, v2, :cond_95

    iget-object v2, v0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v13, v2, v12

    iget-object v2, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v2, v2, v12

    if-ltz v2, :cond_92

    invoke-virtual {v13}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v2

    if-eqz v2, :cond_36

    goto/16 :goto_92

    :cond_36
    invoke-interface {v1, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-interface {v1, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    add-int/lit8 v2, v15, 0x1

    const/4 v4, 0x1

    if-ne v8, v2, :cond_55

    iget-object v2, v0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    add-int/lit8 v5, v15, 0x1

    invoke-static {v1, v5}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v2, v5}, Landroid/text/method/WordIterator;->isMidWordPunctuation(Ljava/util/Locale;I)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x0

    move/from16 v16, v2

    goto :goto_72

    :cond_55
    if-le v9, v14, :cond_6f

    if-le v8, v15, :cond_5a

    goto :goto_6f

    :cond_5a
    if-ne v8, v15, :cond_6a

    if-lez v8, :cond_6a

    invoke-static {v1, v8}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Landroid/widget/SpellChecker;->isSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_6a

    move v3, v4

    goto :goto_6b

    :cond_6a
    nop

    :goto_6b
    move v2, v3

    move/from16 v16, v2

    goto :goto_72

    :cond_6f
    :goto_6f
    const/4 v2, 0x1

    move/from16 v16, v2

    :goto_72
    if-ltz v14, :cond_92

    if-le v15, v14, :cond_92

    if-nez p1, :cond_7a

    if-eqz v16, :cond_92

    :cond_7a
    invoke-virtual {v13, v4}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    new-instance v17, Landroid/view/textservice/TextInfo;

    iget v6, v0, Landroid/widget/SpellChecker;->mCookie:I

    iget-object v2, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v7, v2, v12

    move-object/from16 v2, v17

    move-object v3, v1

    move v4, v14

    move v5, v15

    invoke-direct/range {v2 .. v7}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    add-int/lit8 v3, v11, 0x1

    aput-object v2, v10, v11

    move v11, v3

    :cond_92
    :goto_92
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    :cond_95
    if-lez v11, :cond_a7

    array-length v2, v10

    if-ge v11, v2, :cond_a1

    new-array v2, v11, [Landroid/view/textservice/TextInfo;

    invoke-static {v10, v3, v2, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    move-object v10, v3

    :cond_a1
    iget-object v2, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v3, 0x5

    invoke-virtual {v2, v10, v3}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    :cond_a7
    return-void
.end method


# virtual methods
.method public closeSession()V
    .registers 4

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    :cond_7
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_20

    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 11

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_3c

    aget-object v2, p1, v1

    if-nez v2, :cond_11

    goto :goto_39

    :cond_11
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v5

    if-ge v4, v5, :cond_34

    invoke-virtual {v2, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v5

    if-nez v5, :cond_20

    goto :goto_31

    :cond_20
    invoke-virtual {v2, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v6

    invoke-virtual {v2, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v8

    if-nez v3, :cond_31

    if-eqz v8, :cond_31

    move-object v3, v8

    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_34
    if-eqz v3, :cond_39

    invoke-interface {v0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3c
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 6

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    aget-object v2, p1, v1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    return-void
.end method

.method onPerformSpellCheck()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/widget/SpellChecker;->spellCheck(IIZ)V

    return-void
.end method

.method public onSelectionChanged()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method public onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_11

    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    return-void

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method resetSession()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextServicesManagerForUser()Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_53

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    if-nez v0, :cond_2b

    goto :goto_53

    :cond_2b
    const/16 v0, 0x1b

    new-instance v1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    invoke-direct {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;-><init>()V

    iget-object v2, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p0}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    goto :goto_56

    :cond_53
    :goto_53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    :goto_56
    const/4 v0, 0x0

    :goto_57
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_63

    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_63
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    return-void
.end method

.method public spellCheck(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SpellChecker;->spellCheck(IIZ)V

    return-void
.end method

.method public spellCheck(IIZ)V
    .registers 11

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    iget-object v3, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v3, :cond_2b

    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_2b

    :cond_18
    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    move v3, v2

    :goto_25
    if-eq v1, v3, :cond_39

    invoke-virtual {p0}, Landroid/widget/SpellChecker;->resetSession()V

    goto :goto_39

    :cond_2b
    :goto_2b
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    const/4 p1, 0x0

    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_39
    :goto_39
    if-nez v1, :cond_3c

    return-void

    :cond_3c
    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v3, :cond_53

    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/SpellChecker$SpellParser;->parse(IIZ)V

    return-void

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_53
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Landroid/widget/SpellChecker$SpellParser;

    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    new-instance v2, Landroid/widget/SpellChecker$SpellParser;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$SpellParser-IA;)V

    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v2, v5, v3

    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/SpellChecker$SpellParser;->parse(IIZ)V

    return-void
.end method
