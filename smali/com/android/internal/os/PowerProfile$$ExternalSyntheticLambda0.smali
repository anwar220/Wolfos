# classes4.dex

.class public final synthetic Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Double;

    invoke-static {v0, p1, p2}, Lcom/android/internal/os/PowerProfile;->lambda$dump$0(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method
