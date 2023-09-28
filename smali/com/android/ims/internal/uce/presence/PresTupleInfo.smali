# classes4.dex

.class public Lcom/android/ims/internal/uce/presence/PresTupleInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresTupleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContactUri:Ljava/lang/String;

.field private mFeatureTag:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresTupleInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getContactUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public setContactUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    return-void
.end method

.method public setFeatureTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
