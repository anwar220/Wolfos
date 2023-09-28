# classes.dex

.class Landroid/app/SystemServiceRegistry$135;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "TTServiceClass;>;"
    }
.end annotation


# instance fields
.field final synthetic val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;


# direct methods
.method constructor <init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/app/SystemServiceRegistry$135;->val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTServiceClass;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/SystemServiceRegistry$135;->val$serviceProducer:Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;

    invoke-interface {v0}, Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;->createService()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
