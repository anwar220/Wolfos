# classes2.dex

.class public final synthetic Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/radio/ProgramSelector;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput p2, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;->f$2:Landroid/hardware/radio/ProgramSelector;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget v1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda3;->f$2:Landroid/hardware/radio/ProgramSelector;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/TunerCallbackAdapter;->lambda$onTuneFailed$3$android-hardware-radio-TunerCallbackAdapter(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method
