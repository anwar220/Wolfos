# classes2.dex

.class public abstract Landroid/nfc/cardemulation/OffHostApduService;
.super Landroid/app/Service;


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.off_host_apdu_service"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method
