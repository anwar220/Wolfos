# classes3.dex

.class public final Landroid/os/UserManager$EnforcingUser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnforcingUser"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final userId:I

.field private final userRestrictionSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/UserManager$EnforcingUser$1;

    invoke-direct {v0}, Landroid/os/UserManager$EnforcingUser$1;-><init>()V

    sput-object v0, Landroid/os/UserManager$EnforcingUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/UserManager$EnforcingUser;->userId:I

    iput p2, p0, Landroid/os/UserManager$EnforcingUser;->userRestrictionSource:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserManager$EnforcingUser;->userId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserManager$EnforcingUser;->userRestrictionSource:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/UserManager$EnforcingUser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/UserManager$EnforcingUser;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    iget v0, p0, Landroid/os/UserManager$EnforcingUser;->userId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserRestrictionSource()I
    .registers 2

    iget v0, p0, Landroid/os/UserManager$EnforcingUser;->userRestrictionSource:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/os/UserManager$EnforcingUser;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/UserManager$EnforcingUser;->userRestrictionSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method