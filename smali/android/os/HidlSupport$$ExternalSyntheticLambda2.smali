# classes3.dex

.class public final synthetic Landroid/os/HidlSupport$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Object;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/HidlSupport$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/Object;

    iput-object p2, p0, Landroid/os/HidlSupport$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 4

    iget-object v0, p0, Landroid/os/HidlSupport$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/HidlSupport$$ExternalSyntheticLambda2;->f$1:[Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Landroid/os/HidlSupport;->lambda$deepEquals$0([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method