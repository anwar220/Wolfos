# classes2.dex

.class public final synthetic Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/radio/ProgramList$OnCloseListener;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/TunerAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/radio/TunerAdapter;

    return-void
.end method


# virtual methods
.method public final onClose()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/radio/TunerAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerAdapter;->lambda$getDynamicProgramList$1$android-hardware-radio-TunerAdapter()V

    return-void
.end method
