# classes3.dex

.class public abstract Landroid/telephony/VopsSupportInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VopsSupportInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/VopsSupportInfo$1;

    invoke-direct {v0}, Landroid/telephony/VopsSupportInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/VopsSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract isEmergencyServiceFallbackSupported()Z
.end method

.method public abstract isEmergencyServiceSupported()Z
.end method

.method public abstract isVopsSupported()Z
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .registers 4

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
