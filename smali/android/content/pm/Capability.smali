# classes.dex

.class public final Landroid/content/pm/Capability;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/Capability$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Capability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/Capability$1;

    invoke-direct {v0}, Landroid/content/pm/Capability$1;-><init>()V

    sput-object v0, Landroid/content/pm/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/pm/Capability$Builder;)V
    .registers 3

    invoke-static {p1}, Landroid/content/pm/Capability$Builder;->-$$Nest$fgetmName(Landroid/content/pm/Capability$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/Capability;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/Capability$Builder;Landroid/content/pm/Capability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/Capability;-><init>(Landroid/content/pm/Capability$Builder;)V

    return-void
.end method

.method constructor <init>(Landroid/content/pm/Capability;)V
    .registers 3

    iget-object v0, p1, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/content/pm/Capability;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/Capability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/Capability;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iput-object p1, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'/\' is not permitted in the capability name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/content/pm/Capability;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/content/pm/Capability;

    iget-object v1, v1, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
