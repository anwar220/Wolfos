# classes3.dex

.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final CARRIAGE_RETURN:I = 0xd

.field private static final LINE_FEED:I = 0xa

.field static final OLD_SEL_START:Ljava/lang/Object;

.field static sCachedPaint:Landroid/graphics/Paint;


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .registers 8

    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_5

    return p1

    :cond_5
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    const/4 v1, 0x0

    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_33

    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ge v2, p1, :cond_30

    if-le v3, p1, :cond_30

    if-eqz p2, :cond_2e

    move v4, v2

    goto :goto_2f

    :cond_2e
    move v4, v3

    :goto_2f
    move p1, v4

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_33
    return p1
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .registers 14

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x70f4

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    return v2

    :cond_16
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    invoke-static {p2, v2, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v3

    if-ne v3, v2, :cond_29

    move v3, v2

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    const/4 v4, 0x2

    invoke-static {p2, v4, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v4

    if-ne v4, v2, :cond_33

    move v4, v2

    goto :goto_34

    :cond_33
    move v4, v1

    :goto_34
    if-eqz v0, :cond_41

    if-nez v4, :cond_40

    if-eqz v3, :cond_3b

    goto :goto_40

    :cond_3b
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v1

    return v1

    :cond_40
    :goto_40
    return v1

    :cond_41
    if-eqz v4, :cond_4a

    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v5

    if-eqz v5, :cond_4a

    return v2

    :cond_4a
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-eqz p5, :cond_76

    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_5c

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    goto :goto_6e

    :cond_5c
    iget-object v6, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_5f
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez v7, :cond_6a

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    sput-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    :cond_6a
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    monitor-exit v6
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_73

    move-object v6, v7

    :goto_6e
    invoke-static {p2, v5, v6}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v6

    goto :goto_7a

    :catchall_73
    move-exception v1

    :try_start_74
    monitor-exit v6
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v1

    :cond_76
    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result v6

    :goto_7a
    if-eq v5, v6, :cond_88

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v1, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v2

    :cond_88
    return v1
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 8

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-eq v3, v2, :cond_24

    invoke-interface {p2, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v4, 0x1

    return v4

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 6

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ge v1, v0, :cond_d

    move v2, v1

    move v1, v0

    move v0, v2

    :cond_d
    if-eq v0, v1, :cond_14

    invoke-interface {p2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v2, 0x1

    return v2

    :cond_14
    const/4 v2, 0x0

    return v2
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .registers 9

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    if-nez p3, :cond_10

    if-eqz v0, :cond_18

    :cond_10
    if-eqz p3, :cond_19

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_19

    :cond_18
    return v2

    :cond_19
    const/4 v1, 0x0

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_25

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    :cond_25
    if-nez v1, :cond_2d

    new-instance v3, Landroid/text/method/WordIterator;

    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    move-object v1, v3

    :cond_2d
    const/4 v3, -0x1

    if-eqz p3, :cond_43

    move v2, v0

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v4

    if-ne v4, v3, :cond_4e

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    goto :goto_4e

    :cond_43
    move v4, v0

    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v2

    if-ne v2, v3, :cond_4e

    const/4 v2, 0x0

    :cond_4e
    :goto_4e
    invoke-interface {p2, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v3, 0x1

    return v3
.end method

.method private static getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_9

    const/4 v2, 0x0

    return v2

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/16 v11, 0x8

    const/16 v12, 0x9

    const/16 v13, 0xa

    const/16 v14, 0xb

    const/16 v15, 0xc

    const/16 v16, 0xd

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, p1

    move/from16 v2, v19

    move/from16 v25, v20

    move/from16 v20, v3

    move/from16 v3, v25

    :goto_2d
    move/from16 v21, v4

    invoke-static {v0, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    sub-int v3, v3, v22

    move/from16 v22, v5

    packed-switch v2, :pswitch_data_1d4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_5e  #0xc
    invoke-static {v4}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v23

    if-eqz v23, :cond_68

    add-int/lit8 v17, v17, 0x2

    goto/16 :goto_1bf

    :cond_68
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v23

    if-eqz v23, :cond_78

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v23

    add-int v17, v17, v23

    const/16 v2, 0xd

    goto/16 :goto_1bf

    :cond_78
    const/16 v17, 0x2

    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_7e  #0xb
    invoke-static {v4}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v23

    if-eqz v23, :cond_8a

    add-int/lit8 v17, v17, -0x2

    const/16 v2, 0xa

    goto/16 :goto_1bf

    :cond_8a
    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_8e  #0xa
    invoke-static {v4}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v23

    if-eqz v23, :cond_9a

    add-int/lit8 v17, v17, 0x2

    const/16 v2, 0xb

    goto/16 :goto_1bf

    :cond_9a
    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_9e  #0x9
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v23

    if-eqz v23, :cond_b3

    add-int/lit8 v23, v18, 0x1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v24

    add-int v23, v23, v24

    add-int v17, v17, v23

    const/16 v18, 0x0

    const/4 v2, 0x7

    goto/16 :goto_1bf

    :cond_b3
    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_b7  #0x8
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v23

    if-eqz v23, :cond_d6

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v23

    const/16 v19, 0x1

    add-int/lit8 v23, v23, 0x1

    add-int v17, v17, v23

    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v23

    if-eqz v23, :cond_d0

    const/16 v23, 0x4

    goto :goto_d2

    :cond_d0
    const/16 v23, 0x7

    :goto_d2
    move/from16 v2, v23

    goto/16 :goto_1bf

    :cond_d6
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v23

    if-eqz v23, :cond_e4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v18

    const/16 v2, 0x9

    goto/16 :goto_1bf

    :cond_e4
    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_e8  #0x7
    sget v5, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    if-ne v4, v5, :cond_f0

    const/16 v2, 0x8

    goto/16 :goto_1bf

    :cond_f0
    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_f4  #0x6
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v5

    if-eqz v5, :cond_103

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int v17, v17, v5

    const/4 v2, 0x7

    goto/16 :goto_1bf

    :cond_103
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v5

    if-nez v5, :cond_115

    invoke-static {v4}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v5

    if-nez v5, :cond_115

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int v17, v17, v5

    :cond_115
    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_119  #0x5
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v5

    if-eqz v5, :cond_127

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int v5, v18, v5

    add-int v17, v17, v5

    :cond_127
    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_12b  #0x4
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v5

    if-eqz v5, :cond_13a

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    const/4 v2, 0x5

    move/from16 v18, v5

    goto/16 :goto_1bf

    :cond_13a
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v5

    if-eqz v5, :cond_146

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int v17, v17, v5

    :cond_146
    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_14a  #0x3
    invoke-static {v4}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v5

    if-eqz v5, :cond_158

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int v5, v18, v5

    add-int v17, v17, v5

    :cond_158
    const/16 v2, 0xd

    goto/16 :goto_1bf

    :pswitch_15c  #0x2
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v5

    if-eqz v5, :cond_16a

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    const/4 v2, 0x3

    move/from16 v18, v5

    goto :goto_1bf

    :cond_16a
    invoke-static {v4}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v5

    if-eqz v5, :cond_176

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int v17, v17, v5

    :cond_176
    const/16 v2, 0xd

    goto :goto_1bf

    :pswitch_179  #0x1
    const/16 v5, 0xd

    if-ne v4, v5, :cond_17f

    add-int/lit8 v17, v17, 0x1

    :cond_17f
    const/16 v2, 0xd

    goto :goto_1bf

    :pswitch_182  #0x0
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    move/from16 v17, v5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_18e

    const/4 v2, 0x1

    goto :goto_1bf

    :cond_18e
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v5

    if-eqz v5, :cond_196

    const/4 v2, 0x6

    goto :goto_1bf

    :cond_196
    invoke-static {v4}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_19f

    const/16 v2, 0xa

    goto :goto_1bf

    :cond_19f
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v5

    if-eqz v5, :cond_1a7

    const/4 v2, 0x4

    goto :goto_1bf

    :cond_1a7
    sget v5, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    if-ne v4, v5, :cond_1ad

    const/4 v2, 0x2

    goto :goto_1bf

    :cond_1ad
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v5

    if-eqz v5, :cond_1b5

    const/4 v2, 0x7

    goto :goto_1bf

    :cond_1b5
    sget v5, Landroid/text/Emoji;->CANCEL_TAG:I

    if-ne v4, v5, :cond_1bc

    const/16 v2, 0xc

    goto :goto_1bf

    :cond_1bc
    const/16 v2, 0xd

    nop

    :goto_1bf
    if-lez v3, :cond_1cc

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1c6

    goto :goto_1cc

    :cond_1c6
    move/from16 v4, v21

    move/from16 v5, v22

    goto/16 :goto_2d

    :cond_1cc
    :goto_1cc
    sub-int v4, v1, v17

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v4

    return v4

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_182  #00000000
        :pswitch_179  #00000001
        :pswitch_15c  #00000002
        :pswitch_14a  #00000003
        :pswitch_12b  #00000004
        :pswitch_119  #00000005
        :pswitch_f4  #00000006
        :pswitch_e8  #00000007
        :pswitch_b7  #00000008
        :pswitch_9e  #00000009
        :pswitch_8e  #0000000a
        :pswitch_7e  #0000000b
        :pswitch_5e  #0000000c
    .end packed-switch
.end method

.method private static getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .registers 11

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    if-lt p1, v0, :cond_9

    return v7

    :cond_9
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move v3, v7

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static isVariationSelector(I)Z
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .registers 5

    const/4 v0, 0x1

    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    goto :goto_16

    :pswitch_d  #0x3
    or-int/lit16 v0, v0, 0x4000

    goto :goto_16

    :pswitch_10  #0x2
    or-int/lit16 v0, v0, 0x2000

    goto :goto_16

    :pswitch_13  #0x1
    or-int/lit16 v0, v0, 0x1000

    nop

    :goto_16
    if-eqz p1, :cond_1c

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_1c
    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_10  #00000002
        :pswitch_d  #00000003
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7

    sparse-switch p3, :sswitch_data_1c

    const/4 v0, 0x0

    goto :goto_f

    :sswitch_5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f

    :sswitch_a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    nop

    :goto_f
    if-eqz v0, :cond_16

    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    const/4 v1, 0x1

    return v1

    :cond_16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_1c
    .sparse-switch
        0x43 -> :sswitch_a
        0x70 -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_28

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_28

    :cond_f
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ge v2, v0, :cond_1c

    move v3, v2

    move v2, v0

    move v0, v3

    :cond_1c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    return v1

    :cond_23
    invoke-interface {p2, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v1, 0x1

    return v1

    :cond_28
    :goto_28
    return v1
.end method
