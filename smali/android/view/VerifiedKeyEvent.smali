# classes3.dex

.class public final Landroid/view/VerifiedKeyEvent;
.super Landroid/view/VerifiedInputEvent;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedKeyEvent$KeyEventAction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VerifiedKeyEvent"


# instance fields
.field private mAction:I

.field private mDownTimeNanos:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScanCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/VerifiedKeyEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedKeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJIIIJIIIII)V
    .registers 23

    move-object v7, p0

    move v8, p6

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/VerifiedInputEvent;-><init>(IIJII)V

    iput v8, v7, Landroid/view/VerifiedKeyEvent;->mAction:I

    const-class v0, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 v1, 0x0

    invoke-static {v0, v1, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    move-wide/from16 v0, p7

    iput-wide v0, v7, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    move/from16 v2, p9

    iput v2, v7, Landroid/view/VerifiedKeyEvent;->mFlags:I

    move/from16 v3, p10

    iput v3, v7, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    move/from16 v4, p11

    iput v4, v7, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    move/from16 v5, p12

    iput v5, v7, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    move/from16 v6, p13

    iput v6, v7, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 12

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/VerifiedInputEvent;-><init>(Landroid/os/Parcel;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    const-class v8, Landroid/view/VerifiedKeyEvent$KeyEventAction;

    const/4 v9, 0x0

    invoke-static {v8, v9, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-wide v1, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    iput v3, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    iput v4, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    iput v5, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    iput v6, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    iput v7, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4b

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/VerifiedKeyEvent;

    nop

    invoke-super {p0, v2}, Landroid/view/VerifiedInputEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mAction:I

    if-ne v3, v4, :cond_49

    iget-wide v3, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    iget-wide v5, v2, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mFlags:I

    if-ne v3, v4, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    if-ne v3, v4, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    if-ne v3, v4, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    if-ne v3, v4, :cond_49

    iget v3, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    iget v4, v2, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    if-ne v3, v4, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    return v0

    :cond_4b
    :goto_4b
    return v1
.end method

.method public getAction()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    return v0
.end method

.method public getDownTimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    return-wide v0
.end method

.method public getFlag(I)Ljava/lang/Boolean;
    .registers 3

    sparse-switch p1, :sswitch_data_12

    const/4 v0, 0x0

    return-object v0

    :sswitch_5
    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :sswitch_data_12
    .sparse-switch
        0x20 -> :sswitch_5
        0x800 -> :sswitch_5
    .end sparse-switch
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    return v0
.end method

.method public getKeyCode()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    return v0
.end method

.method public getMetaState()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    return v0
.end method

.method public getRepeatCount()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    return v0
.end method

.method public getScanCode()I
    .registers 2

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/view/VerifiedInputEvent;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    add-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/VerifiedKeyEvent;->mDownTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/VerifiedKeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
