# classes4.dex

.class public final synthetic Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:[Z


# direct methods
.method public synthetic constructor <init>([Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;->f$0:[Z

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;->f$0:[Z

    invoke-static {v0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->lambda$initLayoutIdToViewType$1([ZI)Z

    move-result p1

    return p1
.end method
