# classes2.dex

.class public final synthetic Landroid/media/MediaRouter$Static$Client$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter$Static$Client;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter$Static$Client;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter$Static$Client$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaRouter$Static$Client;

    iput-object p2, p0, Landroid/media/MediaRouter$Static$Client$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, p0, Landroid/media/MediaRouter$Static$Client$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$Static$Client;->lambda$onGroupRouteSelected$1$android-media-MediaRouter$Static$Client(Ljava/lang/String;)V

    return-void
.end method
