# classes.dex

.class public Landroid/hardware/biometrics/SensorLocationInternal;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;


# instance fields
.field public final displayId:Ljava/lang/String;

.field public final sensorLocationX:I

.field public final sensorLocationY:I

.field public final sensorRadius:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/hardware/biometrics/SensorLocationInternal;->DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;

    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/SensorLocationInternal$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/SensorLocationInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    move-object v0, p1

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    iput-object v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    iput p3, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    iput p4, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    iget v2, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    sub-int v3, v1, v2

    iget v4, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    sub-int v5, v4, v2

    add-int/2addr v1, v2

    add-int/2addr v4, v2

    invoke-direct {v0, v3, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
