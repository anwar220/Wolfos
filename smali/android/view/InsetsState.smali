# classes3.dex

.class public Landroid/view/InsetsState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsState$InternalInsetsSide;,
        Landroid/view/InsetsState$InternalInsetsType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsState;",
            ">;"
        }
    .end annotation
.end field

.field static final FIRST_TYPE:I = 0x0

.field static final ISIDE_BOTTOM:I = 0x3

.field static final ISIDE_FLOATING:I = 0x4

.field static final ISIDE_LEFT:I = 0x0

.field static final ISIDE_RIGHT:I = 0x2

.field static final ISIDE_TOP:I = 0x1

.field static final ISIDE_UNKNOWN:I = 0x5

.field public static final ITYPE_BOTTOM_DISPLAY_CUTOUT:I = 0xe

.field public static final ITYPE_BOTTOM_GESTURES:I = 0x4

.field public static final ITYPE_BOTTOM_MANDATORY_GESTURES:I = 0x8

.field public static final ITYPE_BOTTOM_TAPPABLE_ELEMENT:I = 0x12

.field public static final ITYPE_CAPTION_BAR:I = 0x2

.field public static final ITYPE_CLIMATE_BAR:I = 0x14

.field public static final ITYPE_EXTRA_NAVIGATION_BAR:I = 0x15

.field public static final ITYPE_IME:I = 0x13

.field public static final ITYPE_INVALID:I = -0x1

.field public static final ITYPE_LEFT_DISPLAY_CUTOUT:I = 0xb

.field public static final ITYPE_LEFT_GESTURES:I = 0x5

.field public static final ITYPE_LEFT_MANDATORY_GESTURES:I = 0x9

.field public static final ITYPE_LEFT_TAPPABLE_ELEMENT:I = 0xf

.field public static final ITYPE_LOCAL_NAVIGATION_BAR_1:I = 0x16

.field public static final ITYPE_LOCAL_NAVIGATION_BAR_2:I = 0x17

.field public static final ITYPE_NAVIGATION_BAR:I = 0x1

.field public static final ITYPE_RIGHT_DISPLAY_CUTOUT:I = 0xd

.field public static final ITYPE_RIGHT_GESTURES:I = 0x6

.field public static final ITYPE_RIGHT_MANDATORY_GESTURES:I = 0xa

.field public static final ITYPE_RIGHT_TAPPABLE_ELEMENT:I = 0x11

.field public static final ITYPE_SHELF:I = 0x1

.field public static final ITYPE_STATUS_BAR:I = 0x0

.field public static final ITYPE_TOP_DISPLAY_CUTOUT:I = 0xc

.field public static final ITYPE_TOP_GESTURES:I = 0x3

.field public static final ITYPE_TOP_MANDATORY_GESTURES:I = 0x7

.field public static final ITYPE_TOP_TAPPABLE_ELEMENT:I = 0x10

.field static final LAST_TYPE:I = 0x17

.field public static final SIZE:I = 0x18


# instance fields
.field private final mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field private final mDisplayFrame:Landroid/graphics/Rect;

.field private mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final mRoundedCornerFrame:Landroid/graphics/Rect;

.field private mRoundedCorners:Landroid/view/RoundedCorners;

.field private final mSources:[Landroid/view/InsetsSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/InsetsState$1;

    invoke-direct {v0}, Landroid/view/InsetsState$1;-><init>()V

    sput-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsState;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    return-void
.end method

.method private calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .registers 8

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    if-nez p1, :cond_14

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v1

    :cond_14
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    if-lt v1, v5, :cond_4b

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    if-lt v2, v5, :cond_4b

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v5

    if-lt v3, v5, :cond_4b

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    if-lt v4, v5, :cond_4b

    sget-object v5, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v5

    :cond_4b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v5

    return-object v5
.end method

.method private calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;
    .registers 7

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object v0

    :cond_b
    if-nez p1, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v4

    return-object v4
.end method

.method private calculateRelativeRoundedCorners(Landroid/graphics/Rect;)Landroid/view/RoundedCorners;
    .registers 9

    if-nez p1, :cond_5

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    return-object v0

    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_27

    aget-object v5, v1, v4

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getInsetsRoundedCornerFrame()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {v5, v0, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_27
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, p1, v0}, Landroid/view/RoundedCorners;->insetWithFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object v1

    return-object v1

    :cond_3c
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object v1

    :cond_47
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object v5

    return-object v5
.end method

.method private canControlSide(Landroid/graphics/Rect;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_2c

    return v0

    :pswitch_6  #0x4
    return v1

    :pswitch_7  #0x1, 0x3
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_18

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_18

    move v0, v1

    :cond_18
    return v0

    :pswitch_19  #0x0, 0x2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_2a

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_2a

    move v0, v1

    :cond_2a
    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_19  #00000000
        :pswitch_7  #00000001
        :pswitch_19  #00000002
        :pswitch_7  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method

.method public static clearsCompatInsets(III)Z
    .registers 4

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_14

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_14

    const/16 v0, 0x7da

    if-eq p0, v0, :cond_14

    invoke-static {p2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static containsType([II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    if-ne v3, p1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v0
.end method

.method public static getDefaultVisibility(I)Z
    .registers 2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static getInsetSide(Landroid/graphics/Insets;)I
    .registers 2

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, p0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    return v0

    :cond_a
    iget v0, p0, Landroid/graphics/Insets;->left:I

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    iget v0, p0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    iget v0, p0, Landroid/graphics/Insets;->right:I

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    return v0

    :cond_1c
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    return v0

    :cond_22
    const/4 v0, 0x5

    return v0
.end method

.method private processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z)V
    .registers 16

    invoke-virtual {p1, p2, p3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    const/16 v0, 0x20

    if-ne v8, v0, :cond_25

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    :cond_25
    const/4 v0, 0x4

    if-ne v8, v0, :cond_3d

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    const/16 v6, 0x20

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    const/16 v6, 0x40

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    :cond_3d
    return-void
.end method

.method private processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V
    .registers 11

    invoke-static {p6}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    aget-object v1, p2, v0

    if-nez v1, :cond_b

    aput-object p5, p2, v0

    goto :goto_11

    :cond_b
    invoke-static {v1, p5}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    aput-object v2, p2, v0

    :goto_11
    if-eqz p4, :cond_19

    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    aput-boolean v2, p4, v0

    :cond_19
    if-eqz p3, :cond_29

    invoke-static {p5}, Landroid/view/InsetsState;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_29

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-virtual {p3, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_29
    return-void
.end method

.method public static toInternalType(I)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1a
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_41
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_4d

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4d
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_71

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_71
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_98

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_98
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_c0

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_c0
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_cd

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_cd
    return-object v0
.end method

.method public static toPublicType(I)I
    .registers 4

    packed-switch p0, :pswitch_data_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x13
    const/16 v0, 0x8

    return v0

    :pswitch_1f  #0xf, 0x10, 0x11, 0x12
    const/16 v0, 0x40

    return v0

    :pswitch_22  #0xb, 0xc, 0xd, 0xe
    const/16 v0, 0x80

    return v0

    :pswitch_25  #0x7, 0x8, 0x9, 0xa
    const/16 v0, 0x20

    return v0

    :pswitch_28  #0x3, 0x4, 0x5, 0x6
    const/16 v0, 0x10

    return v0

    :pswitch_2b  #0x2
    const/4 v0, 0x4

    return v0

    :pswitch_2d  #0x1, 0x15, 0x16, 0x17
    const/4 v0, 0x2

    return v0

    :pswitch_2f  #0x0, 0x14
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f  #00000000
        :pswitch_2d  #00000001
        :pswitch_2b  #00000002
        :pswitch_28  #00000003
        :pswitch_28  #00000004
        :pswitch_28  #00000005
        :pswitch_28  #00000006
        :pswitch_25  #00000007
        :pswitch_25  #00000008
        :pswitch_25  #00000009
        :pswitch_25  #0000000a
        :pswitch_22  #0000000b
        :pswitch_22  #0000000c
        :pswitch_22  #0000000d
        :pswitch_22  #0000000e
        :pswitch_1f  #0000000f
        :pswitch_1f  #00000010
        :pswitch_1f  #00000011
        :pswitch_1f  #00000012
        :pswitch_1c  #00000013
        :pswitch_2f  #00000014
        :pswitch_2d  #00000015
        :pswitch_2d  #00000016
        :pswitch_2d  #00000017
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_60

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ITYPE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x17
    const-string v0, "ITYPE_LOCAL_NAVIGATION_BAR_2"

    return-object v0

    :pswitch_1a  #0x16
    const-string v0, "ITYPE_LOCAL_NAVIGATION_BAR_1"

    return-object v0

    :pswitch_1d  #0x15
    const-string v0, "ITYPE_EXTRA_NAVIGATION_BAR"

    return-object v0

    :pswitch_20  #0x14
    const-string v0, "ITYPE_CLIMATE_BAR"

    return-object v0

    :pswitch_23  #0x13
    const-string v0, "ITYPE_IME"

    return-object v0

    :pswitch_26  #0x12
    const-string v0, "ITYPE_BOTTOM_TAPPABLE_ELEMENT"

    return-object v0

    :pswitch_29  #0x11
    const-string v0, "ITYPE_RIGHT_TAPPABLE_ELEMENT"

    return-object v0

    :pswitch_2c  #0x10
    const-string v0, "ITYPE_TOP_TAPPABLE_ELEMENT"

    return-object v0

    :pswitch_2f  #0xf
    const-string v0, "ITYPE_LEFT_TAPPABLE_ELEMENT"

    return-object v0

    :pswitch_32  #0xe
    const-string v0, "ITYPE_BOTTOM_DISPLAY_CUTOUT"

    return-object v0

    :pswitch_35  #0xd
    const-string v0, "ITYPE_RIGHT_DISPLAY_CUTOUT"

    return-object v0

    :pswitch_38  #0xc
    const-string v0, "ITYPE_TOP_DISPLAY_CUTOUT"

    return-object v0

    :pswitch_3b  #0xb
    const-string v0, "ITYPE_LEFT_DISPLAY_CUTOUT"

    return-object v0

    :pswitch_3e  #0xa
    const-string v0, "ITYPE_RIGHT_MANDATORY_GESTURES"

    return-object v0

    :pswitch_41  #0x9
    const-string v0, "ITYPE_LEFT_MANDATORY_GESTURES"

    return-object v0

    :pswitch_44  #0x8
    const-string v0, "ITYPE_BOTTOM_MANDATORY_GESTURES"

    return-object v0

    :pswitch_47  #0x7
    const-string v0, "ITYPE_TOP_MANDATORY_GESTURES"

    return-object v0

    :pswitch_4a  #0x6
    const-string v0, "ITYPE_RIGHT_GESTURES"

    return-object v0

    :pswitch_4d  #0x5
    const-string v0, "ITYPE_LEFT_GESTURES"

    return-object v0

    :pswitch_50  #0x4
    const-string v0, "ITYPE_BOTTOM_GESTURES"

    return-object v0

    :pswitch_53  #0x3
    const-string v0, "ITYPE_TOP_GESTURES"

    return-object v0

    :pswitch_56  #0x2
    const-string v0, "ITYPE_CAPTION_BAR"

    return-object v0

    :pswitch_59  #0x1
    const-string v0, "ITYPE_NAVIGATION_BAR"

    return-object v0

    :pswitch_5c  #0x0
    const-string v0, "ITYPE_STATUS_BAR"

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5c  #00000000
        :pswitch_59  #00000001
        :pswitch_56  #00000002
        :pswitch_53  #00000003
        :pswitch_50  #00000004
        :pswitch_4d  #00000005
        :pswitch_4a  #00000006
        :pswitch_47  #00000007
        :pswitch_44  #00000008
        :pswitch_41  #00000009
        :pswitch_3e  #0000000a
        :pswitch_3b  #0000000b
        :pswitch_38  #0000000c
        :pswitch_35  #0000000d
        :pswitch_32  #0000000e
        :pswitch_2f  #0000000f
        :pswitch_2c  #00000010
        :pswitch_29  #00000011
        :pswitch_26  #00000012
        :pswitch_23  #00000013
        :pswitch_20  #00000014
        :pswitch_1d  #00000015
        :pswitch_1a  #00000016
        :pswitch_17  #00000017
    .end packed-switch
.end method


# virtual methods
.method public addSource(Landroid/view/InsetsSource;)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public calculateInsets(Landroid/graphics/Rect;ILandroid/view/InsetsVisibilities;)Landroid/graphics/Insets;
    .registers 9

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x17

    if-gt v1, v2, :cond_2a

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    if-nez v2, :cond_e

    goto :goto_27

    :cond_e
    invoke-static {v1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    and-int v4, v3, p2

    if-nez v4, :cond_17

    goto :goto_27

    :cond_17
    invoke-virtual {p3, v1}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_27

    :cond_1e
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2a
    return-object v0
.end method

.method public calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;
    .registers 9

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x17

    if-gt v1, v2, :cond_22

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    if-nez v2, :cond_e

    goto :goto_1f

    :cond_e
    invoke-static {v1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    and-int v4, v3, p2

    if-nez v4, :cond_17

    goto :goto_1f

    :cond_17
    invoke-virtual {v2, p1, p3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_22
    return-object v0
.end method

.method public calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;
    .registers 36

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    const/16 v3, 0x9

    new-array v15, v3, [Landroid/graphics/Insets;

    new-array v14, v3, [Landroid/graphics/Insets;

    new-array v3, v3, [Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v20, v4

    const/4 v4, 0x0

    move v11, v4

    :goto_1c
    const/16 v4, 0x17

    if-gt v11, v4, :cond_6a

    move-object/from16 v13, p0

    iget-object v4, v13, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v12, v4, v11

    if-nez v12, :cond_39

    invoke-static {v11}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v4

    aget-object v5, v15, v4

    if-nez v5, :cond_67

    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    aput-object v5, v15, v4

    goto :goto_67

    :cond_39
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object v5, v12

    move-object v8, v15

    move-object/from16 v9, p10

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z)V

    invoke-virtual {v12}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    const/16 v5, 0x13

    if-eq v4, v5, :cond_67

    if-eqz v1, :cond_53

    invoke-virtual {v1, v11}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    goto :goto_54

    :cond_53
    move-object v4, v12

    :goto_54
    nop

    if-nez v4, :cond_58

    goto :goto_67

    :cond_58
    const/16 v21, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, v4

    move-object/from16 v22, v14

    invoke-direct/range {v18 .. v24}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z)V

    :cond_67
    :goto_67
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    :cond_6a
    move-object/from16 v13, p0

    move/from16 v4, p5

    and-int/lit16 v5, v4, 0xf0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v8

    or-int/2addr v7, v8

    const/16 v8, 0x10

    if-ne v5, v8, :cond_82

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v8

    or-int/2addr v7, v8

    :cond_82
    and-int/lit16 v8, v2, 0x400

    if-eqz v8, :cond_8c

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v8

    not-int v8, v8

    and-int/2addr v7, v8

    :cond_8c
    move/from16 v12, p8

    move/from16 v11, p9

    invoke-static {v12, v2, v11}, Landroid/view/InsetsState;->clearsCompatInsets(III)Z

    move-result v8

    if-eqz v8, :cond_9a

    const/4 v7, 0x0

    move/from16 v18, v7

    goto :goto_9c

    :cond_9a
    move/from16 v18, v7

    :goto_9c
    new-instance v19, Landroid/view/WindowInsets;

    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v16

    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeRoundedCorners(Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object v17

    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v21

    move/from16 v10, p7

    and-int/lit16 v7, v10, 0x100

    if-eqz v7, :cond_b2

    const/4 v7, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v7, 0x0

    :goto_b3
    move/from16 v22, v7

    move-object/from16 v7, v19

    move-object v8, v15

    move-object v9, v14

    move-object v10, v3

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, v16

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    move-object/from16 v24, v15

    move-object/from16 v15, v21

    move/from16 v16, v18

    move/from16 v17, v22

    invoke-direct/range {v7 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    return-object v19
.end method

.method public calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x17

    if-gt v1, v2, :cond_25

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    goto :goto_22

    :cond_d
    nop

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3}, Landroid/view/InsetsState;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/view/InsetsState;->canControlSide(Landroid/graphics/Rect;I)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-static {v1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    or-int/2addr v0, v3

    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_25
    return v0
.end method

.method public calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;
    .registers 13

    invoke-static {p2, p5, p3}, Landroid/view/InsetsState;->clearsCompatInsets(III)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0

    :cond_9
    and-int/lit16 v0, p4, 0xf0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_19

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1d

    :cond_19
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    :goto_1d
    nop

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v3, 0x0

    :goto_21
    const/16 v4, 0x17

    if-gt v3, v4, :cond_40

    iget-object v4, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v4, v4, v3

    if-nez v4, :cond_2c

    goto :goto_3d

    :cond_2c
    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    and-int v6, v5, v1

    if-nez v6, :cond_35

    goto :goto_3d

    :cond_35
    invoke-virtual {v4, p1}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_40
    return-object v2
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "InsetsState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mDisplayFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mDisplayCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mRoundedCorners="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mRoundedCornerFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mPrivacyIndicatorBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_bf
    const/16 v3, 0x18

    if-ge v2, v3, :cond_e1

    iget-object v3, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v3, v3, v2

    if-nez v3, :cond_ca

    goto :goto_de

    :cond_ca
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    :cond_e1
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    if-eqz v2, :cond_14

    const-wide v3, 0x20b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_14
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/DisplayCutout;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;ZZ)Z
    .registers 11

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_72

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsState;

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v4, v2, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3, v4}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v4, v2, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v3, v4}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v4, v2, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v3, v4}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_71

    :cond_48
    const/4 v3, 0x0

    :goto_49
    const/16 v4, 0x18

    if-ge v3, v4, :cond_70

    if-eqz p2, :cond_53

    const/4 v4, 0x2

    if-ne v3, v4, :cond_53

    goto :goto_6c

    :cond_53
    iget-object v4, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v4, v4, v3

    iget-object v5, v2, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v5, v5, v3

    if-nez v4, :cond_60

    if-nez v5, :cond_60

    goto :goto_6c

    :cond_60
    if-eqz v4, :cond_6f

    if-nez v5, :cond_65

    goto :goto_6f

    :cond_65
    invoke-virtual {v5, v4, p3}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_6c

    return v1

    :cond_6c
    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_6f
    :goto_6f
    return v1

    :cond_70
    return v0

    :cond_71
    :goto_71
    return v1

    :cond_72
    :goto_72
    return v1
.end method

.method public getDisplayCutout()Landroid/view/DisplayCutout;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCutoutSafe(Landroid/graphics/Rect;)V
    .registers 6

    const v0, -0x186a0

    const v1, 0x186a0

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_53

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    if-lez v2, :cond_26

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    :cond_26
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    if-lez v2, :cond_35

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    :cond_35
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-lez v2, :cond_44

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_44
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    if-lez v2, :cond_53

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_53
    return-void
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object v0
.end method

.method public getRoundedCorners()Landroid/view/RoundedCorners;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object v0
.end method

.method public getSource(I)Landroid/view/InsetsSource;
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Landroid/view/InsetsSource;

    invoke-direct {v1, p1}, Landroid/view/InsetsSource;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public getSourceOrDefaultVisibility(I)Z
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    :goto_f
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public peekSource(I)Landroid/view/InsetsSource;
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    sget-object v1, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    sget-object v0, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    sget-object v0, Landroid/view/PrivacyIndicatorBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PrivacyIndicatorBounds;

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-void
.end method

.method public removeSource(I)Z
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v1, v0, p1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/4 v0, 0x1

    return v0
.end method

.method public scale(F)V
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->scale(F)V

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->scale(F)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0, p1}, Landroid/view/PrivacyIndicatorBounds;->scale(F)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    const/4 v0, 0x0

    :goto_20
    const/16 v1, 0x18

    if-ge v0, v1, :cond_3d

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->scale(F)V

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3d
    return-void
.end method

.method public set(Landroid/view/InsetsState;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    return-void
.end method

.method public set(Landroid/view/InsetsState;I)V
    .registers 8

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-static {p2}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2b
    if-ltz v1, :cond_42

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    iget-object v4, p1, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    :cond_42
    return-void
.end method

.method public set(Landroid/view/InsetsState;Z)V
    .registers 8

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    const/16 v0, 0x18

    if-eqz p2, :cond_3d

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_3c

    iget-object v2, p1, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    if-eqz v2, :cond_36

    new-instance v4, Landroid/view/InsetsSource;

    invoke-direct {v4, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3c
    goto :goto_4b

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v0, :cond_4b

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    iget-object v3, p1, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4b
    :goto_4b
    return-void
.end method

.method public setDisplayCutout(Landroid/view/DisplayCutout;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    return-void
.end method

.method public setDisplayFrame(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V
    .registers 2

    iput-object p1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-void
.end method

.method public setRoundedCornerFrame(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setRoundedCorners(Landroid/view/RoundedCorners;)V
    .registers 2

    iput-object p1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-void
.end method

.method public setSourceVisible(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Landroid/view/InsetsSource;->setVisible(Z)V

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_8
    const/16 v2, 0x18

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/view/InsetsSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsetsState: {mDisplayFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayCutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRoundedCorners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mRoundedCornerFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrivacyIndicatorBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSources= { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
