# classes3.dex

.class public final synthetic Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/BugreportManager$DumpstateListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/BugreportManager$DumpstateListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iput p2, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iget v1, p0, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onError$1$android-os-BugreportManager$DumpstateListener(I)V

    return-void
.end method
