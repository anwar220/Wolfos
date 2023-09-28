# classes.dex

.class public final Landroid/hardware/face/FaceEnrollFrame;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceEnrollFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCell:Landroid/hardware/face/FaceEnrollCell;

.field private final mData:Landroid/hardware/face/FaceDataFrame;

.field private final mStage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/face/FaceEnrollFrame$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollFrame$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceEnrollFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceEnrollFrame;->mCell:Landroid/hardware/face/FaceEnrollCell;

    iput p2, p0, Landroid/hardware/face/FaceEnrollFrame;->mStage:I

    iput-object p3, p0, Landroid/hardware/face/FaceEnrollFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/hardware/face/FaceEnrollCell;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/face/FaceEnrollCell;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceEnrollCell;

    iput-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mCell:Landroid/hardware/face/FaceEnrollCell;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mStage:I

    const-class v0, Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceDataFrame;

    iput-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/face/FaceEnrollFrame-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCell()Landroid/hardware/face/FaceEnrollCell;
    .registers 2

    iget-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mCell:Landroid/hardware/face/FaceEnrollCell;

    return-object v0
.end method

.method public getData()Landroid/hardware/face/FaceDataFrame;
    .registers 2

    iget-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-object v0
.end method

.method public getStage()I
    .registers 2

    iget v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mStage:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mCell:Landroid/hardware/face/FaceEnrollCell;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mStage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/face/FaceEnrollFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
