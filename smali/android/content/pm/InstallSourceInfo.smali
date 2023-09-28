# classes.dex

.class public final Landroid/content/pm/InstallSourceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstallSourceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInitiatingPackageName:Ljava/lang/String;

.field private final mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

.field private final mInstallingPackageName:Ljava/lang/String;

.field private final mOriginatingPackageName:Ljava/lang/String;

.field private final mPackageSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/InstallSourceInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstallSourceInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstallSourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageName:Ljava/lang/String;

    const-class v0, Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/SigningInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningInfo;

    iput-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mOriginatingPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInstallingPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/InstallSourceInfo;->mPackageSource:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/InstallSourceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/InstallSourceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    iput-object p3, p0, Landroid/content/pm/InstallSourceInfo;->mOriginatingPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/pm/InstallSourceInfo;->mInstallingPackageName:Ljava/lang/String;

    iput p5, p0, Landroid/content/pm/InstallSourceInfo;->mPackageSource:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->describeContents()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getInitiatingPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitiatingPackageSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    return-object v0
.end method

.method public getInstallingPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInstallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mOriginatingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSource()I
    .registers 2

    iget v0, p0, Landroid/content/pm/InstallSourceInfo;->mPackageSource:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mOriginatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInstallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/InstallSourceInfo;->mPackageSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
