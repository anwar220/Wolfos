# classes2.dex

.class public final synthetic Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2Manager;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2Manager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaRouter2Manager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaRouter2Manager;

    invoke-static {v0}, Landroid/media/MediaRouter2Manager;->$r8$lambda$6CaLroIN47dcx97REg4--u3cVRg(Landroid/media/MediaRouter2Manager;)Landroid/media/MediaRouter2Manager$Client;

    return-void
.end method
