
import argparse
import os
from datasets import load_from_disk

def parse_args():
    """ Parse command line arguments."""
    parser = argparse.ArgumentParser()
    parser.add_argument("--root_directory", type=str, default="")
    args = parser.parse_args()

    return args


def main():

    args = parse_args()
    data = load_from_disk(os.path.join(args.root_directory,"glue_data"))
    print(data.info)


if __name__ == "__main__":
    main()