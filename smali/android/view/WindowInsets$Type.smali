# classes3.dex

.class public final Landroid/view/WindowInsets$Type;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x100

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0x9

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .registers 1

    const/4 v0, 0x4

    return v0
.end method

.method public static displayCutout()I
    .registers 1

    const/16 v0, 0x80

    return v0
.end method

.method public static ime()I
    .registers 1

    const/16 v0, 0x8

    return v0
.end method

.method static indexOf(I)I
    .registers 4

    sparse-switch p0, :sswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1d
    const/16 v0, 0x8

    return v0

    :sswitch_20
    const/4 v0, 0x7

    return v0

    :sswitch_22
    const/4 v0, 0x6

    return v0

    :sswitch_24
    const/4 v0, 0x5

    return v0

    :sswitch_26
    const/4 v0, 0x4

    return v0

    :sswitch_28
    const/4 v0, 0x3

    return v0

    :sswitch_2a
    const/4 v0, 0x2

    return v0

    :sswitch_2c
    const/4 v0, 0x1

    return v0

    :sswitch_2e
    const/4 v0, 0x0

    return v0

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_2a
        0x8 -> :sswitch_28
        0x10 -> :sswitch_26
        0x20 -> :sswitch_24
        0x40 -> :sswitch_22
        0x80 -> :sswitch_20
        0x100 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static mandatorySystemGestures()I
    .registers 1

    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .registers 1

    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .registers 1

    const/4 v0, 0x7

    return v0
.end method

.method public static systemGestures()I
    .registers 1

    const/16 v0, 0x10

    return v0
.end method

.method public static tappableElement()I
    .registers 1

    const/16 v0, 0x40

    return v0
.end method

.method static toString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "statusBars |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_19

    const-string/jumbo v1, "navigationBars |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    const-string v1, "captionBar |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "ime |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_36

    const-string/jumbo v1, "systemGestures |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_40

    const-string/jumbo v1, "mandatorySystemGestures |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "tappableElement |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_53

    const-string v1, "displayCutout |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5d

    const-string/jumbo v1, "windowDecor |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_70

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
