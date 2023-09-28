# classes3.dex

.class public abstract Landroid/view/InputEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PARCEL_TOKEN_KEY_EVENT:I = 0x2

.field protected static final PARCEL_TOKEN_MOTION_EVENT:I = 0x1

.field private static final TRACK_RECYCLED_LOCATION:Z

.field private static final mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field protected mSeq:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/view/InputEvent$1;

    invoke-direct {v0}, Landroid/view/InputEvent$1;-><init>()V

    sput-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Landroid/view/InputEvent;->mSeq:I

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract copy()Landroid/view/InputEvent;
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getDevice()Landroid/view/InputDevice;
    .registers 2

    invoke-virtual {p0}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDeviceId()I
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getEventTime()J
.end method

.method public abstract getEventTimeNano()J
.end method

.method public abstract getId()I
.end method

.method public getSequenceNumber()I
    .registers 2

    iget v0, p0, Landroid/view/InputEvent;->mSeq:I

    return v0
.end method

.method public abstract getSource()I
.end method

.method public isFromSource(I)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public abstract isTainted()Z
.end method

.method protected prepareForReuse()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    sget-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Landroid/view/InputEvent;->mSeq:I

    return-void
.end method

.method public recycle()V
    .registers 4

    iget-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recycleIfNeededAfterDispatch()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/InputEvent;->recycle()V

    return-void
.end method

.method public abstract setDisplayId(I)V
.end method

.method public abstract setSource(I)V
.end method

.method public abstract setTainted(Z)V
.end method
