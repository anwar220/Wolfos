# classes4.dex

.class public final synthetic Lcom/android/internal/util/dump/DumpableContainerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/util/Dumpable;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Dumpable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl$$ExternalSyntheticLambda0;->f$0:Landroid/util/Dumpable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/dump/DumpableContainerImpl$$ExternalSyntheticLambda0;->f$0:Landroid/util/Dumpable;

    invoke-static {v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;->lambda$addDumpable$0(Landroid/util/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
