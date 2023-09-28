# classes3.dex

.class public Landroid/view/ScrollCaptureResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureResponse$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/ScrollCaptureResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBoundsInWindow:Landroid/graphics/Rect;

.field private mConnection:Landroid/view/IScrollCaptureConnection;

.field private mDescription:Ljava/lang/String;

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mWindowBounds:Landroid/graphics/Rect;

.field private mWindowTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/ScrollCaptureResponse$1;

    invoke-direct {v0}, Landroid/view/ScrollCaptureResponse$1;-><init>()V

    sput-object v0, Landroid/view/ScrollCaptureResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mWindowBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mBoundsInWindow:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mWindowTitle:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mPackageName:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ScrollCaptureResponse;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_27

    move-object v3, v0

    goto :goto_2f

    :cond_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IScrollCaptureConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureConnection;

    move-result-object v3

    :goto_2f
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_35

    move-object v4, v0

    goto :goto_3d

    :cond_35
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :goto_3d
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_43

    move-object v5, v0

    goto :goto_4b

    :cond_43
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    :goto_4b
    and-int/lit8 v6, v1, 0x10

    if-nez v6, :cond_51

    move-object v6, v0

    goto :goto_55

    :cond_51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    :goto_55
    and-int/lit8 v7, v1, 0x20

    if-nez v7, :cond_5b

    move-object v7, v0

    goto :goto_5f

    :cond_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    :goto_5f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iput-object v2, p0, Landroid/view/ScrollCaptureResponse;->mDescription:Ljava/lang/String;

    const-class v9, Landroid/annotation/NonNull;

    invoke-static {v9, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    iput-object v4, p0, Landroid/view/ScrollCaptureResponse;->mWindowBounds:Landroid/graphics/Rect;

    iput-object v5, p0, Landroid/view/ScrollCaptureResponse;->mBoundsInWindow:Landroid/graphics/Rect;

    iput-object v6, p0, Landroid/view/ScrollCaptureResponse;->mWindowTitle:Ljava/lang/String;

    iput-object v7, p0, Landroid/view/ScrollCaptureResponse;->mPackageName:Ljava/lang/String;

    iput-object v8, p0, Landroid/view/ScrollCaptureResponse;->mMessages:Ljava/util/ArrayList;

    const-class v9, Landroid/annotation/NonNull;

    invoke-static {v9, v0, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/view/IScrollCaptureConnection;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/IScrollCaptureConnection;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mWindowBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mBoundsInWindow:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mWindowTitle:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mPackageName:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ScrollCaptureResponse;->mMessages:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse;->mDescription:Ljava/lang/String;

    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    iput-object p3, p0, Landroid/view/ScrollCaptureResponse;->mWindowBounds:Landroid/graphics/Rect;

    iput-object p4, p0, Landroid/view/ScrollCaptureResponse;->mBoundsInWindow:Landroid/graphics/Rect;

    iput-object p5, p0, Landroid/view/ScrollCaptureResponse;->mWindowTitle:Ljava/lang/String;

    iput-object p6, p0, Landroid/view/ScrollCaptureResponse;->mPackageName:Ljava/lang/String;

    iput-object p7, p0, Landroid/view/ScrollCaptureResponse;->mMessages:Ljava/util/ArrayList;

    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, p7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-interface {v0}, Landroid/view/IScrollCaptureConnection;->close()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    :cond_c
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsInWindow()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getConnection()Landroid/view/IScrollCaptureConnection;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse;->mMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse;->mWindowBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse;->mWindowTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/view/IScrollCaptureConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureResponse { description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundsInWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", windowTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mWindowTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mWindowBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_f
    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mBoundsInWindow:Landroid/graphics/Rect;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_16
    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mWindowTitle:Ljava/lang/String;

    if-eqz v1, :cond_1d

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    :cond_1d
    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_24

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    :cond_24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mConnection:Landroid/view/IScrollCaptureConnection;

    if-eqz v1, :cond_33

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :cond_33
    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mWindowBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_3a

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_3a
    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mBoundsInWindow:Landroid/graphics/Rect;

    if-eqz v1, :cond_41

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_41
    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mWindowTitle:Ljava/lang/String;

    if-eqz v1, :cond_48

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_48
    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_4f

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_4f
    iget-object v1, p0, Landroid/view/ScrollCaptureResponse;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
