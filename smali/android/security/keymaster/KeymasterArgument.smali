# classes3.dex

.class abstract Landroid/security/keymaster/KeymasterArgument;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeymasterArgument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final tag:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/security/keymaster/KeymasterArgument$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArgument$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument;->writeValue(Landroid/os/Parcel;)V

    return-void
.end method

.method public abstract writeValue(Landroid/os/Parcel;)V
.end method
