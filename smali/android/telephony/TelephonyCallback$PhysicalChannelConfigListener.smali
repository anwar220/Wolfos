# classes3.dex

.class public interface abstract Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhysicalChannelConfigListener"
.end annotation


# virtual methods
.method public abstract onPhysicalChannelConfigChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation
.end method
