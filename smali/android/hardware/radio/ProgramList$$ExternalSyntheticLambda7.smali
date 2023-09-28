# classes2.dex

.class public final synthetic Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-static {p1}, Landroid/hardware/radio/ProgramList;->lambda$apply$4(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    return-void
.end method
