# classes2.dex

.class public final synthetic Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/nfc/NfcControllerAlwaysOnListener;

.field public final synthetic f$1:Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;


# direct methods
.method public synthetic constructor <init>(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;->f$0:Landroid/nfc/NfcControllerAlwaysOnListener;

    iput-object p2, p0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;->f$1:Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;->f$0:Landroid/nfc/NfcControllerAlwaysOnListener;

    iget-object v1, p0, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;->f$1:Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcControllerAlwaysOnListener;->lambda$sendCurrentState$0$android-nfc-NfcControllerAlwaysOnListener(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    return-void
.end method
