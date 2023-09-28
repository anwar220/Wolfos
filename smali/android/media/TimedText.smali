# classes2.dex

.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field private static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field private static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iput v1, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iput v1, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iput v1, p0, Landroid/media/TimedText;->mScrollDelay:I

    iput v1, p0, Landroid/media/TimedText;->mWrapText:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_2d

    return-void

    :cond_2d
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iput v0, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iput v0, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iput v0, p0, Landroid/media/TimedText;->mScrollDelay:I

    iput v0, p0, Landroid/media/TimedText;->mWrapText:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    iput-object p1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private containsKey(I)Z
    .registers 4

    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private getObject(I)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidKey(I)Z
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v1, 0x10

    if-le p1, v1, :cond_10

    :cond_7
    const/16 v1, 0x65

    if-lt p1, v1, :cond_11

    const/16 v1, 0x6b

    if-le p1, v1, :cond_10

    goto :goto_11

    :cond_10
    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0
.end method

.method private keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v2, 0x66

    const-string v3, "Invalid timed text key found: "

    const-string v4, "TimedText"

    if-ne v1, v2, :cond_53

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v5, 0x10

    if-eq v1, v5, :cond_39

    return v0

    :cond_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    if-eqz v6, :cond_4f

    array-length v7, v6

    if-nez v7, :cond_47

    goto :goto_4f

    :cond_47
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v7, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_6c

    :cond_4f
    :goto_4f
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_6c

    :cond_53
    const/16 v2, 0x65

    if-eq v1, v2, :cond_6c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6c
    :goto_6c
    nop

    :goto_6d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_140

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v5

    if-nez v5, :cond_92

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_92
    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_142

    :pswitch_96  #0x2, 0x7
    goto/16 :goto_11e

    :pswitch_98  #0xf
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-instance v8, Landroid/media/TimedText$Justification;

    invoke-direct {v8, v6, v7}, Landroid/media/TimedText$Justification;-><init>(II)V

    iput-object v8, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    iget-object v5, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    goto/16 :goto_11e

    :pswitch_ab  #0xe
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7, v6, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    goto :goto_11e

    :pswitch_c3  #0xd
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    goto :goto_11e

    :pswitch_c9  #0xc
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    goto :goto_11e

    :pswitch_cf  #0xb
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    goto :goto_11e

    :pswitch_d5  #0xa
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    goto :goto_11e

    :pswitch_db  #0x9
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    goto :goto_11e

    :pswitch_e1  #0x8
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    goto :goto_11e

    :pswitch_e7  #0x6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_11e

    :pswitch_f2  #0x5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_11e

    :pswitch_fd  #0x4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_11e

    :pswitch_108  #0x3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_11e

    :pswitch_113  #0x1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    :goto_11e
    if-eqz v5, :cond_13e

    iget-object v6, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_135

    iget-object v6, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_135
    iget-object v6, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13e
    goto/16 :goto_6d

    :cond_140
    const/4 v0, 0x1

    return v0

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_113  #00000001
        :pswitch_96  #00000002
        :pswitch_108  #00000003
        :pswitch_fd  #00000004
        :pswitch_f2  #00000005
        :pswitch_e7  #00000006
        :pswitch_96  #00000007
        :pswitch_e1  #00000008
        :pswitch_db  #00000009
        :pswitch_d5  #0000000a
        :pswitch_cf  #0000000b
        :pswitch_c9  #0000000c
        :pswitch_c3  #0000000d
        :pswitch_ab  #0000000e
        :pswitch_98  #0000000f
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_18

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    :cond_18
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .registers 10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Ljava/lang/String;-><init>([BII)V

    new-instance v6, Landroid/media/TimedText$Font;

    invoke-direct {v6, v2, v5}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v7, :cond_29

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    :cond_29
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_31
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/media/TimedText$CharPos;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_18

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    :cond_18
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .registers 11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v7

    new-instance v7, Landroid/media/TimedText$HyperText;

    invoke-direct {v7, v0, v1, v4, v5}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_34

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    :cond_34
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .registers 10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Landroid/media/TimedText$Karaoke;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_27

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    :cond_27
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    :goto_16
    if-nez v1, :cond_7d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_7d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sparse-switch v2, :sswitch_data_a2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    move-object/from16 v10, p1

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v1, 0x1

    goto :goto_7c

    :sswitch_32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v10, p1

    move/from16 v18, v3

    goto :goto_7c

    :sswitch_3b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v10, p1

    move/from16 v17, v3

    goto :goto_7c

    :sswitch_44
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v10, p1

    move v13, v3

    goto :goto_7c

    :sswitch_4c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v10, p1

    move v12, v3

    goto :goto_7c

    :sswitch_54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v10, p1

    move v11, v3

    goto :goto_7c

    :sswitch_5c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_68

    move v4, v6

    goto :goto_69

    :cond_68
    move v4, v5

    :goto_69
    rem-int/lit8 v7, v3, 0x4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_70

    move v7, v6

    goto :goto_71

    :cond_70
    move v7, v5

    :goto_71
    div-int/lit8 v8, v3, 0x4

    if-ne v8, v6, :cond_76

    move v5, v6

    :cond_76
    move-object/from16 v10, p1

    move v14, v4

    move/from16 v16, v5

    move v15, v7

    :goto_7c
    goto :goto_16

    :cond_7d
    move-object/from16 v10, p1

    new-instance v19, Landroid/media/TimedText$Style;

    move-object/from16 v2, v19

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    iget-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v3, :cond_9c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    :cond_9c
    iget-object v3, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :sswitch_data_a2
    .sparse-switch
        0x2 -> :sswitch_5c
        0x67 -> :sswitch_54
        0x68 -> :sswitch_4c
        0x69 -> :sswitch_44
        0x6a -> :sswitch_3b
        0x6b -> :sswitch_32
    .end sparse-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
