# classes2.dex

.class public final synthetic Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/media/MediaRouter2Manager;->lambda$getDeselectableRoutes$12(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
