# classes2.dex

.class public final synthetic Landroid/hardware/radio/ProgramSelector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p1}, Landroid/hardware/radio/ProgramSelector;->lambda$new$0(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result p1

    return p1
.end method
