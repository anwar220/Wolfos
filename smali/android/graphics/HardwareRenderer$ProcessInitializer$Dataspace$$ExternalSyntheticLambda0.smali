# classes.dex

.class public final synthetic Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/graphics/ColorSpace;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/ColorSpace;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/ColorSpace;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/ColorSpace;

    check-cast p1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    invoke-static {v0, p1}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->lambda$find$0(Landroid/graphics/ColorSpace;Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;)Z

    move-result p1

    return p1
.end method
