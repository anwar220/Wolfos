# classes3.dex

.class public final Landroid/providers/settings/GlobalSettingsProto$ManagedDeviceProvisioning;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ManagedDeviceProvisioning"
.end annotation


# static fields
.field public static final MANAGED_PROVISIONING_DEFER_PROVISIONING_TO_ROLE_HOLDER:J = 0x10b00000001L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$ManagedDeviceProvisioning;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method