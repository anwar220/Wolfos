# classes.dex

.class public final Landroid/hardware/face/FaceAuthenticationFrame;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceAuthenticationFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:Landroid/hardware/face/FaceDataFrame;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticationFrame$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceAuthenticationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/face/FaceDataFrame;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticationFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceDataFrame;

    iput-object v0, p0, Landroid/hardware/face/FaceAuthenticationFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/face/FaceAuthenticationFrame-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroid/hardware/face/FaceDataFrame;
    .registers 2

    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticationFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticationFrame;->mData:Landroid/hardware/face/FaceDataFrame;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
