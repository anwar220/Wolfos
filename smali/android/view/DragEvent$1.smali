# classes3.dex

.class Landroid/view/DragEvent$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DragEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/DragEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;
    .registers 4

    invoke-static {}, Landroid/view/DragEvent;->obtain()Landroid/view/DragEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmOffsetX(Landroid/view/DragEvent;F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmOffsetY(Landroid/view/DragEvent;F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    iput-boolean v1, v0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, v0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    :cond_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f

    sget-object v1, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipDescription;

    iput-object v1, v0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    :cond_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_60

    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-static {v0, v1}, Landroid/view/DragEvent;->-$$Nest$fputmDragSurface(Landroid/view/DragEvent;Landroid/view/SurfaceControl;)V

    :cond_60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_71

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v1

    iput-object v1, v0, Landroid/view/DragEvent;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    :cond_71
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DragEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/DragEvent;
    .registers 3

    new-array v0, p1, [Landroid/view/DragEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/DragEvent$1;->newArray(I)[Landroid/view/DragEvent;

    move-result-object p1

    return-object p1
.end method
