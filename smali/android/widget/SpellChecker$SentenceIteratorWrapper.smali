# classes4.dex

.class Landroid/widget/SpellChecker$SentenceIteratorWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentenceIteratorWrapper"
.end annotation


# instance fields
.field private mEndOffset:I

.field private mSentenceIterator:Ljava/text/BreakIterator;

.field private mStartOffset:I


# direct methods
.method constructor <init>(Ljava/text/BreakIterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    return-void
.end method


# virtual methods
.method public following(I)I
    .registers 5

    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    const/4 v1, -0x1

    if-le p1, v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    iget v2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-ne v0, v1, :cond_13

    goto :goto_16

    :cond_13
    iget v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    add-int/2addr v1, v0

    :goto_16
    return v1
.end method

.method public isBoundary(I)Z
    .registers 4

    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    if-lt p1, v0, :cond_12

    iget v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    if-le p1, v1, :cond_9

    goto :goto_12

    :cond_9
    iget-object v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    return v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public preceding(I)I
    .registers 5

    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    const/4 v1, -0x1

    if-ge p1, v0, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_14

    :cond_11
    iget v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    add-int/2addr v1, v0

    :goto_14
    return v1
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    iget-object v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    iget v2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method
