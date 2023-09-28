# classes2.dex

.class Landroid/media/Cea708CCParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCParser$CaptionWindow;,
        Landroid/media/Cea708CCParser$CaptionWindowAttr;,
        Landroid/media/Cea708CCParser$CaptionPenLocation;,
        Landroid/media/Cea708CCParser$CaptionPenColor;,
        Landroid/media/Cea708CCParser$CaptionPenAttr;,
        Landroid/media/Cea708CCParser$CaptionEvent;,
        Landroid/media/Cea708CCParser$CaptionColor;,
        Landroid/media/Cea708CCParser$Const;,
        Landroid/media/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field public static final CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final mBuffer:Ljava/lang/StringBuffer;

.field private mCommand:I

.field private mListener:Landroid/media/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "♫"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/media/Cea708CCParser$DisplayListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    new-instance v0, Landroid/media/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroid/media/Cea708CCParser$1;-><init>(Landroid/media/Cea708CCParser;)V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    if-eqz p1, :cond_18

    iput-object p1, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    :cond_18
    return-void
.end method

.method private emitCaptionBuffer()V
    .registers 5

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1f
    return-void
.end method

.method private emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .registers 3

    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    invoke-interface {v0, p1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return-void
.end method

.method private parseC0([BI)I
    .registers 6

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_39

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_39

    if-ne v0, v1, :cond_36

    :try_start_c
    aget-byte v0, p1, p2

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    :cond_1b
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const-string v2, "EUC-KR"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_2d} :catch_2e

    :goto_2d
    goto :goto_36

    :catch_2e
    move-exception v0

    const-string v1, "Cea708CCParser"

    const-string v2, "P16 Code - Could not find supported encoding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    add-int/lit8 p2, p2, 0x2

    goto :goto_8a

    :cond_39
    const/16 v1, 0x10

    if-lt v0, v1, :cond_44

    const/16 v1, 0x17

    if-gt v0, v1, :cond_44

    add-int/lit8 p2, p2, 0x1

    goto :goto_8a

    :cond_44
    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_8c

    goto :goto_8a

    :sswitch_49
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_8a

    :sswitch_57
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8a

    :sswitch_5f
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_8a

    :sswitch_6d
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_8a

    :sswitch_7b
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_8a

    :sswitch_89
    nop

    :goto_8a
    return p2

    nop

    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_89
        0x3 -> :sswitch_7b
        0x8 -> :sswitch_6d
        0xc -> :sswitch_5f
        0xd -> :sswitch_57
        0xe -> :sswitch_49
    .end sparse-switch
.end method

.method private parseC1([BI)I
    .registers 30

    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/Cea708CCParser;->mCommand:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0xf

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_29e

    :pswitch_15  #0x93, 0x94, 0x95, 0x96
    goto/16 :goto_29a

    :pswitch_17  #0x98, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f
    add-int/lit16 v1, v1, -0x98

    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_21

    move v15, v12

    goto :goto_22

    :cond_21
    move v15, v8

    :goto_22
    aget-byte v2, p1, p2

    const/16 v6, 0x10

    and-int/2addr v2, v6

    if-eqz v2, :cond_2c

    move/from16 v16, v12

    goto :goto_2e

    :cond_2c
    move/from16 v16, v8

    :goto_2e
    aget-byte v2, p1, p2

    and-int/2addr v2, v3

    if-eqz v2, :cond_36

    move/from16 v17, v12

    goto :goto_38

    :cond_36
    move/from16 v17, v8

    :goto_38
    aget-byte v2, p1, p2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_46

    move/from16 v19, v12

    goto :goto_48

    :cond_46
    move/from16 v19, v8

    :goto_48
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x7f

    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xf0

    shr-int/2addr v8, v10

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/2addr v4, v9

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3f

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, p1, v10

    and-int/lit8 v10, v10, 0x38

    shr-int/2addr v10, v11

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, p1, v11

    and-int/2addr v5, v11

    add-int/lit8 v11, p2, 0x6

    new-instance v12, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v14, Landroid/media/Cea708CCParser$CaptionWindow;

    move-object v13, v14

    move/from16 p2, v11

    move-object v11, v14

    move v14, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v4

    move/from16 v24, v9

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v13 .. v26}, Landroid/media/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    invoke-direct {v12, v6, v11}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v12}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move/from16 v2, p2

    goto/16 :goto_29c

    :pswitch_9a  #0x97
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    aget-byte v5, p1, p2

    and-int/2addr v5, v11

    new-instance v14, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v14, v1, v2, v3, v5}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v13, p2, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xc0

    shr-int/lit8 v7, v13, 0x6

    add-int/lit8 v13, p2, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0x80

    shr-int/lit8 v6, v13, 0x5

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x30

    shr-int/lit8 v2, v7, 0x4

    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    and-int/2addr v7, v9

    shr-int/lit8 v3, v7, 0x2

    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    and-int/lit8 v5, v7, 0x3

    new-instance v15, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v15, v8, v2, v3, v5}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_e7

    move/from16 v17, v12

    goto :goto_e9

    :cond_e7
    move/from16 v17, v8

    :goto_e9
    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x30

    shr-int/2addr v7, v10

    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x2

    add-int/lit8 v12, p2, 0x2

    aget-byte v12, p1, v12

    and-int/2addr v12, v11

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v10, v13, 0x4

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, p1, v13

    and-int/2addr v9, v13

    shr-int/lit8 v9, v9, 0x2

    add-int/lit8 v13, p2, 0x3

    aget-byte v13, p1, v13

    and-int/2addr v11, v13

    add-int/lit8 v24, p2, 0x4

    new-instance v13, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v4, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    move/from16 v26, v1

    move-object v1, v13

    move-object v13, v4

    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v12

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v13 .. v23}, Landroid/media/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V

    const/16 v13, 0xf

    invoke-direct {v1, v13, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move/from16 v2, v24

    goto/16 :goto_29c

    :pswitch_137  #0x92
    move v13, v4

    aget-byte v1, p1, p2

    and-int/2addr v1, v13

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v3, p2, 0x2

    new-instance v4, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v5, 0xe

    new-instance v6, Landroid/media/Cea708CCParser$CaptionPenLocation;

    invoke-direct {v6, v1, v2}, Landroid/media/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    invoke-direct {v4, v5, v6}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move v2, v3

    goto/16 :goto_29c

    :pswitch_155  #0x91
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    aget-byte v4, p1, p2

    and-int/2addr v4, v11

    new-instance v5, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v6, p2, 0x1

    aget-byte v13, p1, v6

    and-int/lit16 v13, v13, 0xc0

    shr-int/lit8 v1, v13, 0x6

    aget-byte v7, p1, v6

    and-int/lit8 v7, v7, 0x30

    shr-int/lit8 v2, v7, 0x4

    aget-byte v7, p1, v6

    and-int/2addr v7, v9

    shr-int/lit8 v3, v7, 0x2

    aget-byte v7, p1, v6

    and-int/lit8 v4, v7, 0x3

    new-instance v7, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/2addr v6, v12

    aget-byte v13, p1, v6

    and-int/lit8 v13, v13, 0x30

    shr-int/lit8 v2, v13, 0x4

    aget-byte v10, p1, v6

    and-int/2addr v9, v10

    shr-int/lit8 v3, v9, 0x2

    aget-byte v9, p1, v6

    and-int/lit8 v4, v9, 0x3

    new-instance v9, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v9, v8, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    move-object v8, v9

    add-int/2addr v6, v12

    new-instance v9, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v10, 0xd

    new-instance v11, Landroid/media/Cea708CCParser$CaptionPenColor;

    invoke-direct {v11, v5, v7, v8}, Landroid/media/Cea708CCParser$CaptionPenColor;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V

    invoke-direct {v9, v10, v11}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v9}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move v2, v6

    goto/16 :goto_29c

    :pswitch_1b1  #0x90
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xf0

    shr-int/2addr v1, v10

    aget-byte v2, p1, p2

    and-int/2addr v2, v11

    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1c9

    move/from16 v20, v12

    goto :goto_1cb

    :cond_1c9
    move/from16 v20, v8

    :goto_1cb
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1d6

    move/from16 v19, v12

    goto :goto_1d8

    :cond_1d6
    move/from16 v19, v8

    :goto_1d8
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x38

    shr-int/2addr v4, v11

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x2

    new-instance v7, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v8, Landroid/media/Cea708CCParser$CaptionPenAttr;

    move-object v13, v8

    move v14, v2

    move v15, v3

    move/from16 v16, v1

    move/from16 v17, v5

    move/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Landroid/media/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    invoke-direct {v7, v9, v8}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v7}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    move v2, v6

    goto/16 :goto_29c

    :pswitch_1ff  #0x8f
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xb

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_29a

    :pswitch_20b  #0x8e
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_29a

    :pswitch_217  #0x8d
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29c

    :pswitch_22c  #0x8c
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v4, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29c

    :pswitch_23f  #0x8b
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29c

    :pswitch_252  #0x8a
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29c

    :pswitch_265  #0x89
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29c

    :pswitch_278  #0x88
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_29c

    :pswitch_28b  #0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87
    add-int/lit8 v1, v1, -0x80

    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    nop

    :goto_29a
    move/from16 v2, p2

    :goto_29c
    return v2

    nop

    :pswitch_data_29e
    .packed-switch 0x80
        :pswitch_28b  #00000080
        :pswitch_28b  #00000081
        :pswitch_28b  #00000082
        :pswitch_28b  #00000083
        :pswitch_28b  #00000084
        :pswitch_28b  #00000085
        :pswitch_28b  #00000086
        :pswitch_28b  #00000087
        :pswitch_278  #00000088
        :pswitch_265  #00000089
        :pswitch_252  #0000008a
        :pswitch_23f  #0000008b
        :pswitch_22c  #0000008c
        :pswitch_217  #0000008d
        :pswitch_20b  #0000008e
        :pswitch_1ff  #0000008f
        :pswitch_1b1  #00000090
        :pswitch_155  #00000091
        :pswitch_137  #00000092
        :pswitch_15  #00000093
        :pswitch_15  #00000094
        :pswitch_15  #00000095
        :pswitch_15  #00000096
        :pswitch_9a  #00000097
        :pswitch_17  #00000098
        :pswitch_17  #00000099
        :pswitch_17  #0000009a
        :pswitch_17  #0000009b
        :pswitch_17  #0000009c
        :pswitch_17  #0000009d
        :pswitch_17  #0000009e
        :pswitch_17  #0000009f
    .end packed-switch
.end method

.method private parseC2([BI)I
    .registers 5

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_8

    const/4 v1, 0x7

    if-gt v0, v1, :cond_8

    goto :goto_28

    :cond_8
    const/16 v1, 0x8

    if-lt v0, v1, :cond_13

    const/16 v1, 0xf

    if-gt v0, v1, :cond_13

    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    :cond_13
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1e

    add-int/lit8 p2, p2, 0x2

    goto :goto_28

    :cond_1e
    const/16 v1, 0x18

    if-lt v0, v1, :cond_28

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_28

    add-int/lit8 p2, p2, 0x3

    :cond_28
    :goto_28
    return p2
.end method

.method private parseC3([BI)I
    .registers 5

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_d

    const/16 v1, 0x87

    if-gt v0, v1, :cond_d

    add-int/lit8 p2, p2, 0x4

    goto :goto_17

    :cond_d
    const/16 v1, 0x88

    if-lt v0, v1, :cond_17

    const/16 v1, 0x8f

    if-gt v0, v1, :cond_17

    add-int/lit8 p2, p2, 0x5

    :cond_17
    :goto_17
    return p2
.end method

.method private parseExt1([BI)I
    .registers 6

    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    if-ltz v0, :cond_14

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_14

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC2([BI)I

    move-result p2

    goto :goto_38

    :cond_14
    const/16 v2, 0x80

    if-lt v0, v2, :cond_21

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_21

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC3([BI)I

    move-result p2

    goto :goto_38

    :cond_21
    const/16 v2, 0x20

    if-lt v0, v2, :cond_2e

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2e

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG2([BI)I

    move-result p2

    goto :goto_38

    :cond_2e
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_38

    if-gt v0, v1, :cond_38

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG3([BI)I

    move-result p2

    :cond_38
    :goto_38
    return p2
.end method

.method private parseG0([BI)I
    .registers 5

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_e
    iget-object v1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_14
    return p2
.end method

.method private parseG1([BI)I
    .registers 5

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p2
.end method

.method private parseG2([BI)I
    .registers 4

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    sparse-switch v0, :sswitch_data_a

    goto :goto_9

    :sswitch_6
    goto :goto_9

    :sswitch_7
    goto :goto_9

    :sswitch_8
    nop

    :goto_9
    return p2

    :sswitch_data_a
    .sparse-switch
        0x20 -> :sswitch_8
        0x21 -> :sswitch_7
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method private parseG3([BI)I
    .registers 3

    nop

    return p2
.end method

.method private parseServiceBlockData([BI)I
    .registers 6

    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_12

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseExt1([BI)I

    move-result p2

    goto :goto_41

    :cond_12
    if-ltz v0, :cond_1d

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1d

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC0([BI)I

    move-result p2

    goto :goto_41

    :cond_1d
    const/16 v2, 0x80

    if-lt v0, v2, :cond_2a

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_2a

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC1([BI)I

    move-result p2

    goto :goto_41

    :cond_2a
    const/16 v2, 0x20

    if-lt v0, v2, :cond_37

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_37

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG0([BI)I

    move-result p2

    goto :goto_41

    :cond_37
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_41

    if-gt v0, v1, :cond_41

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG1([BI)I

    move-result p2

    :cond_41
    :goto_41
    return p2
.end method


# virtual methods
.method public parse([B)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_9

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    return-void
.end method
