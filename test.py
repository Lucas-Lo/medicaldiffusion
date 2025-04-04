import torch

print("-----LAUNCH script test-----")

print("torch.version", torch.__version__)
print("torch.cuda.is_available()", torch.cuda.is_available())
print("torch.cuda.device_count()", torch.cuda.device_count())
print("torch.cuda.current_device()", torch.cuda.current_device())
print("torch.cuda.device(torch.cuda.current_device())", torch.cuda.device(torch.cuda.current_device()))

print("-----CLOSE script test-----")

from ddpm import unet