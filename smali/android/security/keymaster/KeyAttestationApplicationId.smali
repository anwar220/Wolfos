# classes3.dex

.class public Landroid/security/keymaster/KeyAttestationApplicationId;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeyAttestationApplicationId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/security/keymaster/KeyAttestationApplicationId$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeyAttestationApplicationId$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeyAttestationApplicationId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/security/keymaster/KeyAttestationPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    iput-object v0, p0, Landroid/security/keymaster/KeyAttestationApplicationId;->mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;

    return-void
.end method

.method public constructor <init>([Landroid/security/keymaster/KeyAttestationPackageInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keymaster/KeyAttestationApplicationId;->mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAttestationPackageInfos()[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .registers 2

    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationApplicationId;->mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationApplicationId;->mAttestationPackageInfos:[Landroid/security/keymaster/KeyAttestationPackageInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method