# classes.dex

.class Landroid/gesture/Gesture$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/gesture/Gesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/gesture/Gesture;
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_13
    invoke-static {v3}, Landroid/gesture/Gesture;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;

    move-result-object v4
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_1f
    .catchall {:try_start_13 .. :try_end_17} :catchall_1d

    move-object v0, v4

    nop

    :goto_19
    invoke-static {v3}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_29

    :catchall_1d
    move-exception v4

    goto :goto_2f

    :catch_1f
    move-exception v4

    :try_start_20
    const-string v5, "Gestures"

    const-string v6, "Error reading Gesture from parcel:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    nop

    goto :goto_19

    :goto_29
    if-eqz v0, :cond_2e

    invoke-static {v0, v1, v2}, Landroid/gesture/Gesture;->-$$Nest$fputmGestureID(Landroid/gesture/Gesture;J)V

    :cond_2e
    return-object v0

    :goto_2f
    invoke-static {v3}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    throw v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/gesture/Gesture$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gesture/Gesture;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/gesture/Gesture;
    .registers 3

    new-array v0, p1, [Landroid/gesture/Gesture;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/gesture/Gesture$1;->newArray(I)[Landroid/gesture/Gesture;

    move-result-object p1

    return-object p1
.end method
