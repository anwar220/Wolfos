# classes.dex

.class Landroid/content/ContentQueryMap$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentQueryMap;


# direct methods
.method constructor <init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object v0, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->countObservers()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->requery()V

    goto :goto_14

    :cond_e
    iget-object v0, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/ContentQueryMap;->-$$Nest$fputmDirty(Landroid/content/ContentQueryMap;Z)V

    :goto_14
    return-void
.end method
