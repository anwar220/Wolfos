# classes.dex

.class public final enum Landroid/graphics/BlendMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/BlendMode;

.field private static final BLEND_MODES:[Landroid/graphics/BlendMode;

.field public static final enum CLEAR:Landroid/graphics/BlendMode;

.field public static final enum COLOR:Landroid/graphics/BlendMode;

.field public static final enum COLOR_BURN:Landroid/graphics/BlendMode;

.field public static final enum COLOR_DODGE:Landroid/graphics/BlendMode;

.field public static final enum DARKEN:Landroid/graphics/BlendMode;

.field public static final enum DIFFERENCE:Landroid/graphics/BlendMode;

.field public static final enum DST:Landroid/graphics/BlendMode;

.field public static final enum DST_ATOP:Landroid/graphics/BlendMode;

.field public static final enum DST_IN:Landroid/graphics/BlendMode;

.field public static final enum DST_OUT:Landroid/graphics/BlendMode;

.field public static final enum DST_OVER:Landroid/graphics/BlendMode;

.field public static final enum EXCLUSION:Landroid/graphics/BlendMode;

.field public static final enum HARD_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum HUE:Landroid/graphics/BlendMode;

.field public static final enum LIGHTEN:Landroid/graphics/BlendMode;

.field public static final enum LUMINOSITY:Landroid/graphics/BlendMode;

.field public static final enum MODULATE:Landroid/graphics/BlendMode;

.field public static final enum MULTIPLY:Landroid/graphics/BlendMode;

.field public static final enum OVERLAY:Landroid/graphics/BlendMode;

.field public static final enum PLUS:Landroid/graphics/BlendMode;

.field public static final enum SATURATION:Landroid/graphics/BlendMode;

.field public static final enum SCREEN:Landroid/graphics/BlendMode;

.field public static final enum SOFT_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum SRC:Landroid/graphics/BlendMode;

.field public static final enum SRC_ATOP:Landroid/graphics/BlendMode;

.field public static final enum SRC_IN:Landroid/graphics/BlendMode;

.field public static final enum SRC_OUT:Landroid/graphics/BlendMode;

.field public static final enum SRC_OVER:Landroid/graphics/BlendMode;

.field public static final enum XOR:Landroid/graphics/BlendMode;


# instance fields
.field private final mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .registers 32

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    new-instance v1, Landroid/graphics/BlendMode;

    const-string v3, "SRC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    new-instance v3, Landroid/graphics/BlendMode;

    const-string v5, "DST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    new-instance v5, Landroid/graphics/BlendMode;

    const-string v7, "SRC_OVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    new-instance v7, Landroid/graphics/BlendMode;

    const-string v9, "DST_OVER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    new-instance v9, Landroid/graphics/BlendMode;

    const-string v11, "SRC_IN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    new-instance v11, Landroid/graphics/BlendMode;

    const-string v13, "DST_IN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    new-instance v13, Landroid/graphics/BlendMode;

    const-string v15, "SRC_OUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    new-instance v15, Landroid/graphics/BlendMode;

    const-string v14, "DST_OUT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    new-instance v14, Landroid/graphics/BlendMode;

    const-string v12, "SRC_ATOP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    new-instance v12, Landroid/graphics/BlendMode;

    const-string v10, "DST_ATOP"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    new-instance v10, Landroid/graphics/BlendMode;

    const-string v8, "XOR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    new-instance v8, Landroid/graphics/BlendMode;

    const-string v6, "PLUS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    new-instance v6, Landroid/graphics/BlendMode;

    const-string v4, "MODULATE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    new-instance v4, Landroid/graphics/BlendMode;

    const-string v2, "SCREEN"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "OVERLAY"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    new-instance v6, Landroid/graphics/BlendMode;

    const-string v4, "DARKEN"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    new-instance v4, Landroid/graphics/BlendMode;

    const-string v2, "LIGHTEN"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "COLOR_DODGE"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    new-instance v6, Landroid/graphics/BlendMode;

    const-string v4, "COLOR_BURN"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    new-instance v4, Landroid/graphics/BlendMode;

    const-string v2, "HARD_LIGHT"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "SOFT_LIGHT"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    new-instance v6, Landroid/graphics/BlendMode;

    const-string v4, "DIFFERENCE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    new-instance v2, Landroid/graphics/BlendMode;

    const-string v4, "EXCLUSION"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    new-instance v4, Landroid/graphics/BlendMode;

    const-string v6, "MULTIPLY"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "HUE"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    new-instance v4, Landroid/graphics/BlendMode;

    const-string v6, "SATURATION"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "COLOR"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    new-instance v4, Landroid/graphics/BlendMode;

    const-string v6, "LUMINOSITY"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    const/16 v2, 0x1d

    new-array v2, v2, [Landroid/graphics/BlendMode;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v25, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    sput-object v2, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    invoke-static {}, Landroid/graphics/BlendMode;->values()[Landroid/graphics/BlendMode;

    move-result-object v0

    sput-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Landroid/graphics/Xfermode;

    invoke-direct {p1}, Landroid/graphics/Xfermode;-><init>()V

    iput-object p1, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    iput p3, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    return-void
.end method

.method public static blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    sget-object v1, Landroid/graphics/BlendMode$1;->$SwitchMap$android$graphics$BlendMode:[I

    invoke-virtual {p0}, Landroid/graphics/BlendMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    return-object v0

    :pswitch_f  #0x12
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_12  #0x11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_15  #0x10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_18  #0xf
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_1b  #0xe
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_1e  #0xd
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_21  #0xc
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_24  #0xb
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_27  #0xa
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_2a  #0x9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_2d  #0x8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_30  #0x7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_33  #0x6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_36  #0x5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_39  #0x4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_3c  #0x3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_3f  #0x2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_42  #0x1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_45
    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_3f  #00000002
        :pswitch_3c  #00000003
        :pswitch_39  #00000004
        :pswitch_36  #00000005
        :pswitch_33  #00000006
        :pswitch_30  #00000007
        :pswitch_2d  #00000008
        :pswitch_2a  #00000009
        :pswitch_27  #0000000a
        :pswitch_24  #0000000b
        :pswitch_21  #0000000c
        :pswitch_1e  #0000000d
        :pswitch_1b  #0000000e
        :pswitch_18  #0000000f
        :pswitch_15  #00000010
        :pswitch_12  #00000011
        :pswitch_f  #00000012
    .end packed-switch
.end method

.method public static fromValue(I)Landroid/graphics/BlendMode;
    .registers 6

    sget-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    iget-object v4, v3, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    iget v4, v4, Landroid/graphics/Xfermode;->porterDuffMode:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toValue(Landroid/graphics/BlendMode;)I
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Xfermode;->porterDuffMode:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/BlendMode;
    .registers 2

    const-class v0, Landroid/graphics/BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static values()[Landroid/graphics/BlendMode;
    .registers 1

    sget-object v0, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    invoke-virtual {v0}, [Landroid/graphics/BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/BlendMode;

    return-object v0
.end method


# virtual methods
.method public getXfermode()Landroid/graphics/Xfermode;
    .registers 2

    iget-object v0, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method
