# classes3.dex

.class Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRcsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvailabilityCallbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;

    invoke-direct {v0, p2, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;-><init>(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->mBinder:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->mBinder:Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;

    return-object v0
.end method
