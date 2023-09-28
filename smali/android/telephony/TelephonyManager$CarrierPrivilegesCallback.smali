# classes3.dex

.class public interface abstract Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarrierPrivilegesCallback"
.end annotation


# virtual methods
.method public abstract onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public onCarrierServiceChanged(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
