# classes3.dex

.class public final synthetic Landroid/os/HidlSupport$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/HidlSupport$$ExternalSyntheticLambda3;->f$0:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/os/HidlSupport$$ExternalSyntheticLambda3;->f$0:Ljava/util/Iterator;

    invoke-static {v0, p1}, Landroid/os/HidlSupport;->lambda$deepEquals$1(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
