# classes3.dex

.class public final synthetic Landroid/os/IncidentManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Landroid/os/IncidentManager;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IncidentManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/IncidentManager$$ExternalSyntheticLambda0;->f$0:Landroid/os/IncidentManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Landroid/os/IncidentManager$$ExternalSyntheticLambda0;->f$0:Landroid/os/IncidentManager;

    invoke-virtual {v0}, Landroid/os/IncidentManager;->lambda$getIIncidentManagerLocked$0$android-os-IncidentManager()V

    return-void
.end method
