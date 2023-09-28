# classes4.dex

.class public final Landroid/window/TaskFragmentCreationParams;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskFragmentCreationParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentCreationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFragmentToken:Landroid/os/IBinder;

.field private final mInitialBounds:Landroid/graphics/Rect;

.field private mKeepPosition:Z

.field private final mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

.field private final mOwnerToken:Landroid/os/IBinder;

.field private mScale:F

.field private mWindowingMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmInitialBounds(Landroid/window/TaskFragmentCreationParams;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmKeepPosition(Landroid/window/TaskFragmentCreationParams;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/TaskFragmentCreationParams;->mKeepPosition:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScale(Landroid/window/TaskFragmentCreationParams;F)V
    .registers 2

    iput p1, p0, Landroid/window/TaskFragmentCreationParams;->mScale:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWindowingMode(Landroid/window/TaskFragmentCreationParams;I)V
    .registers 2

    iput p1, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/TaskFragmentCreationParams$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentCreationParams$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Landroid/window/TaskFragmentCreationParams;->mScale:F

    sget-object v1, Landroid/window/TaskFragmentOrganizerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskFragmentOrganizerToken;

    iput-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentCreationParams;->mKeepPosition:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mScale:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentCreationParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/window/TaskFragmentCreationParams;->mScale:F

    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    iput-object p2, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/TaskFragmentCreationParams-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFragmentToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInitialBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOrganizer()Landroid/window/TaskFragmentOrganizerToken;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public getOwnerToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mScale:F

    return v0
.end method

.method public getWindowingMode()I
    .registers 2

    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    return v0
.end method

.method public isKeepPosition()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskFragmentCreationParams;->mKeepPosition:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentCreationParams{ organizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ownerToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskFragmentOrganizerToken;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mOwnerToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentCreationParams;->mKeepPosition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/TaskFragmentCreationParams;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
