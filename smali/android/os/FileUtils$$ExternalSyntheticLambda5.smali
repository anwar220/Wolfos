# classes3.dex

.class public final synthetic Landroid/os/FileUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/FileUtils$ProgressListener;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/FileUtils$$ExternalSyntheticLambda5;->f$0:Landroid/os/FileUtils$ProgressListener;

    iput-wide p2, p0, Landroid/os/FileUtils$$ExternalSyntheticLambda5;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/os/FileUtils$$ExternalSyntheticLambda5;->f$0:Landroid/os/FileUtils$ProgressListener;

    iget-wide v1, p0, Landroid/os/FileUtils$$ExternalSyntheticLambda5;->f$1:J

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->lambda$copyInternalSplice$1(Landroid/os/FileUtils$ProgressListener;J)V

    return-void
.end method
